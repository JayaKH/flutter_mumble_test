// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mumble_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MumbleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() speak,
    required TResult Function(bool pushed) pushToTalk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? speak,
    TResult? Function(bool pushed)? pushToTalk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? speak,
    TResult Function(bool pushed)? pushToTalk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MumbleEventStarted value) started,
    required TResult Function(_MumbleEventConnect value) connect,
    required TResult Function(_MumbleEventDisconnect value) disconnect,
    required TResult Function(_MumbleEventSpeak value) speak,
    required TResult Function(_MumbleEventPushToTalk value) pushToTalk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MumbleEventStarted value)? started,
    TResult? Function(_MumbleEventConnect value)? connect,
    TResult? Function(_MumbleEventDisconnect value)? disconnect,
    TResult? Function(_MumbleEventSpeak value)? speak,
    TResult? Function(_MumbleEventPushToTalk value)? pushToTalk,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MumbleEventStarted value)? started,
    TResult Function(_MumbleEventConnect value)? connect,
    TResult Function(_MumbleEventDisconnect value)? disconnect,
    TResult Function(_MumbleEventSpeak value)? speak,
    TResult Function(_MumbleEventPushToTalk value)? pushToTalk,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MumbleEventCopyWith<$Res> {
  factory $MumbleEventCopyWith(
          MumbleEvent value, $Res Function(MumbleEvent) then) =
      _$MumbleEventCopyWithImpl<$Res, MumbleEvent>;
}

/// @nodoc
class _$MumbleEventCopyWithImpl<$Res, $Val extends MumbleEvent>
    implements $MumbleEventCopyWith<$Res> {
  _$MumbleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MumbleEventStartedImplCopyWith<$Res> {
  factory _$$MumbleEventStartedImplCopyWith(_$MumbleEventStartedImpl value,
          $Res Function(_$MumbleEventStartedImpl) then) =
      __$$MumbleEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MumbleEventStartedImplCopyWithImpl<$Res>
    extends _$MumbleEventCopyWithImpl<$Res, _$MumbleEventStartedImpl>
    implements _$$MumbleEventStartedImplCopyWith<$Res> {
  __$$MumbleEventStartedImplCopyWithImpl(_$MumbleEventStartedImpl _value,
      $Res Function(_$MumbleEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MumbleEventStartedImpl
    with DiagnosticableTreeMixin
    implements _MumbleEventStarted {
  const _$MumbleEventStartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MumbleEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MumbleEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MumbleEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() speak,
    required TResult Function(bool pushed) pushToTalk,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? speak,
    TResult? Function(bool pushed)? pushToTalk,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? speak,
    TResult Function(bool pushed)? pushToTalk,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MumbleEventStarted value) started,
    required TResult Function(_MumbleEventConnect value) connect,
    required TResult Function(_MumbleEventDisconnect value) disconnect,
    required TResult Function(_MumbleEventSpeak value) speak,
    required TResult Function(_MumbleEventPushToTalk value) pushToTalk,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MumbleEventStarted value)? started,
    TResult? Function(_MumbleEventConnect value)? connect,
    TResult? Function(_MumbleEventDisconnect value)? disconnect,
    TResult? Function(_MumbleEventSpeak value)? speak,
    TResult? Function(_MumbleEventPushToTalk value)? pushToTalk,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MumbleEventStarted value)? started,
    TResult Function(_MumbleEventConnect value)? connect,
    TResult Function(_MumbleEventDisconnect value)? disconnect,
    TResult Function(_MumbleEventSpeak value)? speak,
    TResult Function(_MumbleEventPushToTalk value)? pushToTalk,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _MumbleEventStarted implements MumbleEvent {
  const factory _MumbleEventStarted() = _$MumbleEventStartedImpl;
}

/// @nodoc
abstract class _$$MumbleEventConnectImplCopyWith<$Res> {
  factory _$$MumbleEventConnectImplCopyWith(_$MumbleEventConnectImpl value,
          $Res Function(_$MumbleEventConnectImpl) then) =
      __$$MumbleEventConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MumbleEventConnectImplCopyWithImpl<$Res>
    extends _$MumbleEventCopyWithImpl<$Res, _$MumbleEventConnectImpl>
    implements _$$MumbleEventConnectImplCopyWith<$Res> {
  __$$MumbleEventConnectImplCopyWithImpl(_$MumbleEventConnectImpl _value,
      $Res Function(_$MumbleEventConnectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MumbleEventConnectImpl
    with DiagnosticableTreeMixin
    implements _MumbleEventConnect {
  const _$MumbleEventConnectImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MumbleEvent.connect()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MumbleEvent.connect'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MumbleEventConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() speak,
    required TResult Function(bool pushed) pushToTalk,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? speak,
    TResult? Function(bool pushed)? pushToTalk,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? speak,
    TResult Function(bool pushed)? pushToTalk,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MumbleEventStarted value) started,
    required TResult Function(_MumbleEventConnect value) connect,
    required TResult Function(_MumbleEventDisconnect value) disconnect,
    required TResult Function(_MumbleEventSpeak value) speak,
    required TResult Function(_MumbleEventPushToTalk value) pushToTalk,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MumbleEventStarted value)? started,
    TResult? Function(_MumbleEventConnect value)? connect,
    TResult? Function(_MumbleEventDisconnect value)? disconnect,
    TResult? Function(_MumbleEventSpeak value)? speak,
    TResult? Function(_MumbleEventPushToTalk value)? pushToTalk,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MumbleEventStarted value)? started,
    TResult Function(_MumbleEventConnect value)? connect,
    TResult Function(_MumbleEventDisconnect value)? disconnect,
    TResult Function(_MumbleEventSpeak value)? speak,
    TResult Function(_MumbleEventPushToTalk value)? pushToTalk,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _MumbleEventConnect implements MumbleEvent {
  const factory _MumbleEventConnect() = _$MumbleEventConnectImpl;
}

/// @nodoc
abstract class _$$MumbleEventDisconnectImplCopyWith<$Res> {
  factory _$$MumbleEventDisconnectImplCopyWith(
          _$MumbleEventDisconnectImpl value,
          $Res Function(_$MumbleEventDisconnectImpl) then) =
      __$$MumbleEventDisconnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MumbleEventDisconnectImplCopyWithImpl<$Res>
    extends _$MumbleEventCopyWithImpl<$Res, _$MumbleEventDisconnectImpl>
    implements _$$MumbleEventDisconnectImplCopyWith<$Res> {
  __$$MumbleEventDisconnectImplCopyWithImpl(_$MumbleEventDisconnectImpl _value,
      $Res Function(_$MumbleEventDisconnectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MumbleEventDisconnectImpl
    with DiagnosticableTreeMixin
    implements _MumbleEventDisconnect {
  const _$MumbleEventDisconnectImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MumbleEvent.disconnect()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MumbleEvent.disconnect'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MumbleEventDisconnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() speak,
    required TResult Function(bool pushed) pushToTalk,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? speak,
    TResult? Function(bool pushed)? pushToTalk,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? speak,
    TResult Function(bool pushed)? pushToTalk,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MumbleEventStarted value) started,
    required TResult Function(_MumbleEventConnect value) connect,
    required TResult Function(_MumbleEventDisconnect value) disconnect,
    required TResult Function(_MumbleEventSpeak value) speak,
    required TResult Function(_MumbleEventPushToTalk value) pushToTalk,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MumbleEventStarted value)? started,
    TResult? Function(_MumbleEventConnect value)? connect,
    TResult? Function(_MumbleEventDisconnect value)? disconnect,
    TResult? Function(_MumbleEventSpeak value)? speak,
    TResult? Function(_MumbleEventPushToTalk value)? pushToTalk,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MumbleEventStarted value)? started,
    TResult Function(_MumbleEventConnect value)? connect,
    TResult Function(_MumbleEventDisconnect value)? disconnect,
    TResult Function(_MumbleEventSpeak value)? speak,
    TResult Function(_MumbleEventPushToTalk value)? pushToTalk,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class _MumbleEventDisconnect implements MumbleEvent {
  const factory _MumbleEventDisconnect() = _$MumbleEventDisconnectImpl;
}

/// @nodoc
abstract class _$$MumbleEventSpeakImplCopyWith<$Res> {
  factory _$$MumbleEventSpeakImplCopyWith(_$MumbleEventSpeakImpl value,
          $Res Function(_$MumbleEventSpeakImpl) then) =
      __$$MumbleEventSpeakImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MumbleEventSpeakImplCopyWithImpl<$Res>
    extends _$MumbleEventCopyWithImpl<$Res, _$MumbleEventSpeakImpl>
    implements _$$MumbleEventSpeakImplCopyWith<$Res> {
  __$$MumbleEventSpeakImplCopyWithImpl(_$MumbleEventSpeakImpl _value,
      $Res Function(_$MumbleEventSpeakImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MumbleEventSpeakImpl
    with DiagnosticableTreeMixin
    implements _MumbleEventSpeak {
  const _$MumbleEventSpeakImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MumbleEvent.speak()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MumbleEvent.speak'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MumbleEventSpeakImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() speak,
    required TResult Function(bool pushed) pushToTalk,
  }) {
    return speak();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? speak,
    TResult? Function(bool pushed)? pushToTalk,
  }) {
    return speak?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? speak,
    TResult Function(bool pushed)? pushToTalk,
    required TResult orElse(),
  }) {
    if (speak != null) {
      return speak();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MumbleEventStarted value) started,
    required TResult Function(_MumbleEventConnect value) connect,
    required TResult Function(_MumbleEventDisconnect value) disconnect,
    required TResult Function(_MumbleEventSpeak value) speak,
    required TResult Function(_MumbleEventPushToTalk value) pushToTalk,
  }) {
    return speak(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MumbleEventStarted value)? started,
    TResult? Function(_MumbleEventConnect value)? connect,
    TResult? Function(_MumbleEventDisconnect value)? disconnect,
    TResult? Function(_MumbleEventSpeak value)? speak,
    TResult? Function(_MumbleEventPushToTalk value)? pushToTalk,
  }) {
    return speak?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MumbleEventStarted value)? started,
    TResult Function(_MumbleEventConnect value)? connect,
    TResult Function(_MumbleEventDisconnect value)? disconnect,
    TResult Function(_MumbleEventSpeak value)? speak,
    TResult Function(_MumbleEventPushToTalk value)? pushToTalk,
    required TResult orElse(),
  }) {
    if (speak != null) {
      return speak(this);
    }
    return orElse();
  }
}

abstract class _MumbleEventSpeak implements MumbleEvent {
  const factory _MumbleEventSpeak() = _$MumbleEventSpeakImpl;
}

/// @nodoc
abstract class _$$MumbleEventPushToTalkImplCopyWith<$Res> {
  factory _$$MumbleEventPushToTalkImplCopyWith(
          _$MumbleEventPushToTalkImpl value,
          $Res Function(_$MumbleEventPushToTalkImpl) then) =
      __$$MumbleEventPushToTalkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool pushed});
}

/// @nodoc
class __$$MumbleEventPushToTalkImplCopyWithImpl<$Res>
    extends _$MumbleEventCopyWithImpl<$Res, _$MumbleEventPushToTalkImpl>
    implements _$$MumbleEventPushToTalkImplCopyWith<$Res> {
  __$$MumbleEventPushToTalkImplCopyWithImpl(_$MumbleEventPushToTalkImpl _value,
      $Res Function(_$MumbleEventPushToTalkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushed = null,
  }) {
    return _then(_$MumbleEventPushToTalkImpl(
      null == pushed
          ? _value.pushed
          : pushed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MumbleEventPushToTalkImpl
    with DiagnosticableTreeMixin
    implements _MumbleEventPushToTalk {
  const _$MumbleEventPushToTalkImpl(this.pushed);

  @override
  final bool pushed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MumbleEvent.pushToTalk(pushed: $pushed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MumbleEvent.pushToTalk'))
      ..add(DiagnosticsProperty('pushed', pushed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MumbleEventPushToTalkImpl &&
            (identical(other.pushed, pushed) || other.pushed == pushed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pushed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MumbleEventPushToTalkImplCopyWith<_$MumbleEventPushToTalkImpl>
      get copyWith => __$$MumbleEventPushToTalkImplCopyWithImpl<
          _$MumbleEventPushToTalkImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connect,
    required TResult Function() disconnect,
    required TResult Function() speak,
    required TResult Function(bool pushed) pushToTalk,
  }) {
    return pushToTalk(pushed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
    TResult? Function()? speak,
    TResult? Function(bool pushed)? pushToTalk,
  }) {
    return pushToTalk?.call(pushed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connect,
    TResult Function()? disconnect,
    TResult Function()? speak,
    TResult Function(bool pushed)? pushToTalk,
    required TResult orElse(),
  }) {
    if (pushToTalk != null) {
      return pushToTalk(pushed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MumbleEventStarted value) started,
    required TResult Function(_MumbleEventConnect value) connect,
    required TResult Function(_MumbleEventDisconnect value) disconnect,
    required TResult Function(_MumbleEventSpeak value) speak,
    required TResult Function(_MumbleEventPushToTalk value) pushToTalk,
  }) {
    return pushToTalk(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MumbleEventStarted value)? started,
    TResult? Function(_MumbleEventConnect value)? connect,
    TResult? Function(_MumbleEventDisconnect value)? disconnect,
    TResult? Function(_MumbleEventSpeak value)? speak,
    TResult? Function(_MumbleEventPushToTalk value)? pushToTalk,
  }) {
    return pushToTalk?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MumbleEventStarted value)? started,
    TResult Function(_MumbleEventConnect value)? connect,
    TResult Function(_MumbleEventDisconnect value)? disconnect,
    TResult Function(_MumbleEventSpeak value)? speak,
    TResult Function(_MumbleEventPushToTalk value)? pushToTalk,
    required TResult orElse(),
  }) {
    if (pushToTalk != null) {
      return pushToTalk(this);
    }
    return orElse();
  }
}

abstract class _MumbleEventPushToTalk implements MumbleEvent {
  const factory _MumbleEventPushToTalk(final bool pushed) =
      _$MumbleEventPushToTalkImpl;

  bool get pushed;
  @JsonKey(ignore: true)
  _$$MumbleEventPushToTalkImplCopyWith<_$MumbleEventPushToTalkImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MumbleState {
  bool get connected => throw _privateConstructorUsedError;
  bool get pushed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MumbleStateCopyWith<MumbleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MumbleStateCopyWith<$Res> {
  factory $MumbleStateCopyWith(
          MumbleState value, $Res Function(MumbleState) then) =
      _$MumbleStateCopyWithImpl<$Res, MumbleState>;
  @useResult
  $Res call({bool connected, bool pushed});
}

/// @nodoc
class _$MumbleStateCopyWithImpl<$Res, $Val extends MumbleState>
    implements $MumbleStateCopyWith<$Res> {
  _$MumbleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connected = null,
    Object? pushed = null,
  }) {
    return _then(_value.copyWith(
      connected: null == connected
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      pushed: null == pushed
          ? _value.pushed
          : pushed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MumbleStateImplCopyWith<$Res>
    implements $MumbleStateCopyWith<$Res> {
  factory _$$MumbleStateImplCopyWith(
          _$MumbleStateImpl value, $Res Function(_$MumbleStateImpl) then) =
      __$$MumbleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool connected, bool pushed});
}

/// @nodoc
class __$$MumbleStateImplCopyWithImpl<$Res>
    extends _$MumbleStateCopyWithImpl<$Res, _$MumbleStateImpl>
    implements _$$MumbleStateImplCopyWith<$Res> {
  __$$MumbleStateImplCopyWithImpl(
      _$MumbleStateImpl _value, $Res Function(_$MumbleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connected = null,
    Object? pushed = null,
  }) {
    return _then(_$MumbleStateImpl(
      connected: null == connected
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      pushed: null == pushed
          ? _value.pushed
          : pushed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MumbleStateImpl with DiagnosticableTreeMixin implements _MumbleState {
  const _$MumbleStateImpl({required this.connected, required this.pushed});

  @override
  final bool connected;
  @override
  final bool pushed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MumbleState(connected: $connected, pushed: $pushed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MumbleState'))
      ..add(DiagnosticsProperty('connected', connected))
      ..add(DiagnosticsProperty('pushed', pushed));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MumbleStateImpl &&
            (identical(other.connected, connected) ||
                other.connected == connected) &&
            (identical(other.pushed, pushed) || other.pushed == pushed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connected, pushed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MumbleStateImplCopyWith<_$MumbleStateImpl> get copyWith =>
      __$$MumbleStateImplCopyWithImpl<_$MumbleStateImpl>(this, _$identity);
}

abstract class _MumbleState implements MumbleState {
  const factory _MumbleState(
      {required final bool connected,
      required final bool pushed}) = _$MumbleStateImpl;

  @override
  bool get connected;
  @override
  bool get pushed;
  @override
  @JsonKey(ignore: true)
  _$$MumbleStateImplCopyWith<_$MumbleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
