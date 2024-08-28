part of 'mumble_bloc.dart';

@freezed
class MumbleState with _$MumbleState {
  const factory MumbleState({
    required bool connected,
    required bool pushed,
  }) = _MumbleState;

  factory MumbleState.initial() {
    return const MumbleState(
      connected: false,
      pushed: false,
    );
  }
}
