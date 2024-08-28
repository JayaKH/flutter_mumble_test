part of 'mumble_bloc.dart';

@freezed
class MumbleEvent with _$MumbleEvent {
  const factory MumbleEvent.started() = _MumbleEventStarted;
  const factory MumbleEvent.connect() = _MumbleEventConnect;
  const factory MumbleEvent.disconnect() = _MumbleEventDisconnect;
  const factory MumbleEvent.speak() = _MumbleEventSpeak;
  const factory MumbleEvent.pushToTalk(bool pushed) = _MumbleEventPushToTalk;
}
