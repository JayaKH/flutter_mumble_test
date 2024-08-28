import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:dumble/dumble.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:opus_dart/opus_dart.dart';
// import 'package:path_provider/path_provider.dart';

part 'mumble_event.dart';
part 'mumble_state.dart';

part 'mumble_bloc.freezed.dart';

const int inputSampleRate = 16000;
const int frameTimeMs = 5; // use frames of 40ms
const FrameTime frameTime = FrameTime.ms5;
const int outputSampleRate = 48000;
const int channels = 1;

const int wavHeaderSize = 44;

class MumbleBloc extends Bloc<MumbleEvent, MumbleState> {
  MumbleClient? _client;
  FlutterSoundRecorder? _recorder;
  StreamSubscription<FoodData>? _recorderSubscription;

  MumbleBloc() : super(MumbleState.initial()) {
    on<_MumbleEventStarted>(_onStarted);
    on<_MumbleEventConnect>(_onConnect);
    on<_MumbleEventDisconnect>(_onDisconnect);
    on<_MumbleEventSpeak>(_onSpeak);
    on<_MumbleEventPushToTalk>(_onPushToTalk);
  }

  @override
  Future<void> close() async {
    await _releaseResources();
    return super.close();
  }

  Future<void> _onStarted(
    _MumbleEventStarted event,
    Emitter<MumbleState> emit,
  ) async {}

  Future<void> _onConnect(
    _MumbleEventConnect event,
    Emitter<MumbleState> emit,
  ) async {
    try {
      StreamOpusEncoder<int> encoder = StreamOpusEncoder.bytes(
        frameTime: frameTime,
        floatInput: false,
        sampleRate: inputSampleRate,
        channels: channels,
        application: Application.voip,
      );

      // CONNECT TO MUMBLE SERVER
      _client = await MumbleClient.connect(
        options: ConnectionOptions(
          host: '103.127.96.166',
          port: 64738,
          name: 'Test From Flutter',
        ),
        onBadCertificate: (certificate) {
          return true;
        },
      );
      AudioFrameSink audioOutput =
          _client!.audio.sendAudio(codec: AudioCodec.opus);

      // OPEN SOUND RECORDER
      _recorder = FlutterSoundRecorder();
      await _recorder?.openRecorder();

      // START SOUND RECORDER
      final recorderController = StreamController<FoodData>();
      // _recorderSubscription = recorderController.stream.listen((event) {
      //   if (state.pushed) {
      //     //   debugPrint("===== BUFFER LENGTH:  ${event.data?.length} =====");
      //   }
      // });

      recorderController.stream
          .map<List<int>>(
            (event) => state.pushed ? event.data ?? Uint8List(0) : Uint8List(0),
          )
          .transform(encoder)
          .map((Uint8List audioBytes) => AudioFrame.outgoing(frame: audioBytes))
          .pipe(audioOutput);
      _recorder?.startRecorder(
        codec: Codec.pcm16,
        sampleRate: inputSampleRate,
        toStream: recorderController.sink,
        bitRate: 48000,
      );
    } catch (e) {
      debugPrint(e.toString());
      add(const MumbleEvent.disconnect());
    }

    emit(state.copyWith(connected: !(_client?.closed ?? true)));

    // String path = await getDownloadsDirectory().then((value) {
    //   String newPath = value?.absolute.path ?? '';
    //   if (value != null) {
    //     debugPrint('Downloads directory: ${value.path}');
    //     newPath = "$newPath/mumble";
    //     Directory(newPath).createSync();
    //   }
    //   return newPath;
    // });

    // _client?.audio.add(SaveToFileAudioListener(path));

    // await Future.delayed(const Duration(
    //     seconds: 5)); // Wait a few seconds before we start talking
  }

  FutureOr<void> _onDisconnect(
    _MumbleEventDisconnect event,
    Emitter<MumbleState> emit,
  ) async {
    await _releaseResources();
    emit(state.copyWith(connected: false));
  }

  Future<void> _releaseResources() async {
    await _recorder?.stopRecorder();
    await _recorderSubscription?.cancel();
    _recorderSubscription = null;
    await _recorder?.closeRecorder();
    await _client?.close();
  }

  Future<void> _onSpeak(
    _MumbleEventSpeak event,
    Emitter<MumbleState> emit,
  ) async {
    if (_recorder?.isStopped ?? false) {
      var recordingDataController = StreamController<FoodData>();
      _recorderSubscription = recordingDataController.stream.listen((buffer) {
        if (state.pushed) {
          debugPrint("===== BUFFER LENGTH:  ${buffer.data?.length} =====");
        }
      });
      await _recorder?.startRecorder(
        codec: Codec.pcm16,
        sampleRate: inputSampleRate,
        toStream: recordingDataController.sink,
      );
    }

    print(_recorder?.recorderState);
    // StreamOpusEncoder<int> encoder = StreamOpusEncoder.bytes(
    //     frameTime: frameTime,
    //     floatInput: false,
    //     sampleRate: inputSampleRate,
    //     channels: channels,
    //     application: Application.voip);
    // AudioFrameSink audioOutput =
    //     _client!.audio.sendAudio(codec: AudioCodec.opus);
    // await simulateAudioRecording() // This simulates recording by reading from a file
    //     .transform(encoder)
    //     // We need to wait since reading from a file is "faster than realtime".
    //     .transform(WaitingTransformer(frameTimeMs))
    //     .map((Uint8List audioBytes) => AudioFrame.outgoing(frame: audioBytes))
    //     .pipe(audioOutput);
  }

  Stream<List<int>> simulateAudioRecording() async* {
    // 0_8000_1_s16le contains pcm audio with a sample rate of 8000hz, one channel, in s16le format.
    // We will now simulate audio recording by reading this file and split it into audio frames of frameTimeMs.
    int frameByteSize = (inputSampleRate ~/ 1000) *
        frameTimeMs *
        channels *
        2; //2 because s16le takes two bytes per sample
    Uint8List? buffer;
    int bufferIndex = 0;
    await for (Uint8List bytes in rootBundle
        .load("assets/0_8000_1_s16le.raw")
        .asStream()
        .asyncMap<Uint8List>((event) => event.buffer.asUint8List())) {
      int consumed = 0;
      while (consumed < bytes.length) {
        if (buffer == null && frameByteSize <= (bytes.length - consumed)) {
          yield bytes.buffer.asUint8List(consumed, frameByteSize);
          consumed += frameByteSize;
        } else if (buffer == null) {
          buffer = Uint8List(frameByteSize);
          bufferIndex = 0;
        } else {
          int read = min(frameByteSize - bufferIndex, bytes.length - consumed);
          buffer.setRange(bufferIndex, bufferIndex + read, bytes, consumed);
          consumed += read;
          bufferIndex += read;
          if (bufferIndex == frameByteSize) {
            yield buffer;
            buffer = null;
          }
        }
      }
    }
  }

  FutureOr<void> _onPushToTalk(
    _MumbleEventPushToTalk event,
    Emitter<MumbleState> emit,
  ) {
    emit(state.copyWith(pushed: event.pushed));
  }
}

class SaveToFileAudioListener with AudioListener {
  final String _dirpath;
  SaveToFileAudioListener(String dirPath) : _dirpath = dirPath;
  // {
  //   getDownloadsDirectory().then((value) {
  //     if (value != null) {
  //       debugPrint('Downloads directory: ${value.path}');
  //       Directory("${value.absolute.path}/mumble").createSync();
  //     }
  //   });
  // }

  @override
  void onAudioReceived(Stream<AudioFrame> voiceData, AudioCodec codec,
      User? speaker, TalkMode talkMode) {
    String target = talkMode == TalkMode.normal
        ? 'talking to ${speaker?.channel.channelId}'
        : ' whispering';
    debugPrint('${speaker?.name} started $target.');
    if (codec == AudioCodec.opus) {
      File targetFile = File(
          '$_dirpath/${speaker?.name}_${DateTime.now().millisecondsSinceEpoch}_.wav');
      IOSink output = targetFile.openWrite();
      output.write(Uint8List(wavHeaderSize)); // Reserve space for a wav header
      // Create an opus stream decoder
      StreamOpusDecoder decoder = StreamOpusDecoder.bytes(
          floatOutput: false, sampleRate: outputSampleRate, channels: channels);
      voiceData
          .map<Uint8List>((AudioFrame frame) =>
              frame.frame) //we are only interested in the bytes
          .cast<Uint8List?>()
          .transform(decoder)
          .cast<List<int>>()
          .pipe(output)
          .then((_) async {
        await output.close();
        await writeWavHeader(targetFile);
        debugPrint('${speaker?.name} stopped $target.');
      });
    } else {
      debugPrint('But we don\'t know how do decode $codec');
    }
  }
}

Future<void> writeWavHeader(File file) async {
  RandomAccessFile r = await file.open(mode: FileMode.append);
  await r.setPosition(0);
  await r.writeFrom(wavHeader(
      channels: channels,
      sampleRate: outputSampleRate,
      fileSize: await file.length()));
}

Uint8List wavHeader(
    {required int sampleRate, required int channels, required int fileSize}) {
  const int sampleBits = 16; //We know this since we used opus
  const Endian endian = Endian.little;
  final int frameSize = ((sampleBits + 7) ~/ 8) * channels;
  ByteData data = ByteData(wavHeaderSize);
  data.setUint32(4, fileSize - 4, endian);
  data.setUint32(16, 16, endian);
  data.setUint16(20, 1, endian);
  data.setUint16(22, channels, endian);
  data.setUint32(24, sampleRate, endian);
  data.setUint32(28, sampleRate * frameSize, endian);
  data.setUint16(30, frameSize, endian);
  data.setUint16(34, sampleBits, endian);
  data.setUint32(40, fileSize - 44, endian);
  Uint8List bytes = data.buffer.asUint8List();
  bytes.setAll(0, ascii.encode('RIFF'));
  bytes.setAll(8, ascii.encode('WAVE'));
  bytes.setAll(12, ascii.encode('fmt '));
  bytes.setAll(36, ascii.encode('data'));
  return bytes;
}

class WaitingTransformer<T> extends StreamTransformerBase<T, T> {
  final int waitTimeMs;
  WaitingTransformer(this.waitTimeMs);

  // Don't use Future.delayed here since it is inprecise
  @override
  Stream<T> bind(Stream<T> stream) {
    Timer? t;
    StreamController<T> controller =
        StreamController<T>(onCancel: t?.cancel, sync: true);
    stream.toList().then((List<T> data) {
      if (!controller.isClosed && data.isNotEmpty) {
        controller.add(data[0]);
        if (data.length > 1) {
          int index = 1;
          t = Timer.periodic(Duration(milliseconds: waitTimeMs), (Timer t) {
            if (t.isActive) {
              controller.add(data[index]);
              index++;
              if (index == data.length) {
                t.cancel();
                controller.close();
              }
            }
          });
        }
      }
    });
    return controller.stream;
  }
}
