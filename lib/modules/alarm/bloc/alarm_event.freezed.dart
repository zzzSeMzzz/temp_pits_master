// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AlarmEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel model) sendAlarm,
    required TResult Function(String alarm) selectAlarm,
    required TResult Function(bool isStart) setStartEngine,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAlarm value) sendAlarm,
    required TResult Function(_SelectAlarm value) selectAlarm,
    required TResult Function(_SetStartEngine value) setStartEngine,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmEventCopyWith<$Res> {
  factory $AlarmEventCopyWith(
    AlarmEvent value,
    $Res Function(AlarmEvent) then,
  ) = _$AlarmEventCopyWithImpl<$Res, AlarmEvent>;
}

/// @nodoc
class _$AlarmEventCopyWithImpl<$Res, $Val extends AlarmEvent>
    implements $AlarmEventCopyWith<$Res> {
  _$AlarmEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SendAlarmImplCopyWith<$Res> {
  factory _$$SendAlarmImplCopyWith(
    _$SendAlarmImpl value,
    $Res Function(_$SendAlarmImpl) then,
  ) = __$$SendAlarmImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AlarmModel model});
}

/// @nodoc
class __$$SendAlarmImplCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$SendAlarmImpl>
    implements _$$SendAlarmImplCopyWith<$Res> {
  __$$SendAlarmImplCopyWithImpl(
    _$SendAlarmImpl _value,
    $Res Function(_$SendAlarmImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? model = null}) {
    return _then(
      _$SendAlarmImpl(
        null == model
            ? _value.model
            : model // ignore: cast_nullable_to_non_nullable
                  as AlarmModel,
      ),
    );
  }
}

/// @nodoc

class _$SendAlarmImpl implements _SendAlarm {
  const _$SendAlarmImpl(this.model);

  @override
  final AlarmModel model;

  @override
  String toString() {
    return 'AlarmEvent.sendAlarm(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendAlarmImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendAlarmImplCopyWith<_$SendAlarmImpl> get copyWith =>
      __$$SendAlarmImplCopyWithImpl<_$SendAlarmImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel model) sendAlarm,
    required TResult Function(String alarm) selectAlarm,
    required TResult Function(bool isStart) setStartEngine,
  }) {
    return sendAlarm(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
  }) {
    return sendAlarm?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    required TResult orElse(),
  }) {
    if (sendAlarm != null) {
      return sendAlarm(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAlarm value) sendAlarm,
    required TResult Function(_SelectAlarm value) selectAlarm,
    required TResult Function(_SetStartEngine value) setStartEngine,
  }) {
    return sendAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
  }) {
    return sendAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    required TResult orElse(),
  }) {
    if (sendAlarm != null) {
      return sendAlarm(this);
    }
    return orElse();
  }
}

abstract class _SendAlarm implements AlarmEvent {
  const factory _SendAlarm(final AlarmModel model) = _$SendAlarmImpl;

  AlarmModel get model;

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendAlarmImplCopyWith<_$SendAlarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAlarmImplCopyWith<$Res> {
  factory _$$SelectAlarmImplCopyWith(
    _$SelectAlarmImpl value,
    $Res Function(_$SelectAlarmImpl) then,
  ) = __$$SelectAlarmImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String alarm});
}

/// @nodoc
class __$$SelectAlarmImplCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$SelectAlarmImpl>
    implements _$$SelectAlarmImplCopyWith<$Res> {
  __$$SelectAlarmImplCopyWithImpl(
    _$SelectAlarmImpl _value,
    $Res Function(_$SelectAlarmImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? alarm = null}) {
    return _then(
      _$SelectAlarmImpl(
        null == alarm
            ? _value.alarm
            : alarm // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SelectAlarmImpl implements _SelectAlarm {
  const _$SelectAlarmImpl(this.alarm);

  @override
  final String alarm;

  @override
  String toString() {
    return 'AlarmEvent.selectAlarm(alarm: $alarm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAlarmImpl &&
            (identical(other.alarm, alarm) || other.alarm == alarm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alarm);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAlarmImplCopyWith<_$SelectAlarmImpl> get copyWith =>
      __$$SelectAlarmImplCopyWithImpl<_$SelectAlarmImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel model) sendAlarm,
    required TResult Function(String alarm) selectAlarm,
    required TResult Function(bool isStart) setStartEngine,
  }) {
    return selectAlarm(alarm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
  }) {
    return selectAlarm?.call(alarm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    required TResult orElse(),
  }) {
    if (selectAlarm != null) {
      return selectAlarm(alarm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAlarm value) sendAlarm,
    required TResult Function(_SelectAlarm value) selectAlarm,
    required TResult Function(_SetStartEngine value) setStartEngine,
  }) {
    return selectAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
  }) {
    return selectAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    required TResult orElse(),
  }) {
    if (selectAlarm != null) {
      return selectAlarm(this);
    }
    return orElse();
  }
}

abstract class _SelectAlarm implements AlarmEvent {
  const factory _SelectAlarm(final String alarm) = _$SelectAlarmImpl;

  String get alarm;

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectAlarmImplCopyWith<_$SelectAlarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetStartEngineImplCopyWith<$Res> {
  factory _$$SetStartEngineImplCopyWith(
    _$SetStartEngineImpl value,
    $Res Function(_$SetStartEngineImpl) then,
  ) = __$$SetStartEngineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isStart});
}

/// @nodoc
class __$$SetStartEngineImplCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$SetStartEngineImpl>
    implements _$$SetStartEngineImplCopyWith<$Res> {
  __$$SetStartEngineImplCopyWithImpl(
    _$SetStartEngineImpl _value,
    $Res Function(_$SetStartEngineImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isStart = null}) {
    return _then(
      _$SetStartEngineImpl(
        null == isStart
            ? _value.isStart
            : isStart // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SetStartEngineImpl implements _SetStartEngine {
  const _$SetStartEngineImpl(this.isStart);

  @override
  final bool isStart;

  @override
  String toString() {
    return 'AlarmEvent.setStartEngine(isStart: $isStart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetStartEngineImpl &&
            (identical(other.isStart, isStart) || other.isStart == isStart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isStart);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetStartEngineImplCopyWith<_$SetStartEngineImpl> get copyWith =>
      __$$SetStartEngineImplCopyWithImpl<_$SetStartEngineImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel model) sendAlarm,
    required TResult Function(String alarm) selectAlarm,
    required TResult Function(bool isStart) setStartEngine,
  }) {
    return setStartEngine(isStart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
  }) {
    return setStartEngine?.call(isStart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    required TResult orElse(),
  }) {
    if (setStartEngine != null) {
      return setStartEngine(isStart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAlarm value) sendAlarm,
    required TResult Function(_SelectAlarm value) selectAlarm,
    required TResult Function(_SetStartEngine value) setStartEngine,
  }) {
    return setStartEngine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
  }) {
    return setStartEngine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    required TResult orElse(),
  }) {
    if (setStartEngine != null) {
      return setStartEngine(this);
    }
    return orElse();
  }
}

abstract class _SetStartEngine implements AlarmEvent {
  const factory _SetStartEngine(final bool isStart) = _$SetStartEngineImpl;

  bool get isStart;

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetStartEngineImplCopyWith<_$SetStartEngineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
