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
    required TResult Function(int pageIndex) setPage,
    required TResult Function(LatLng position) setCurrentPosition,
    required TResult Function() resetState,
    required TResult Function() setLoading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
    TResult? Function(int pageIndex)? setPage,
    TResult? Function(LatLng position)? setCurrentPosition,
    TResult? Function()? resetState,
    TResult? Function()? setLoading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    TResult Function(int pageIndex)? setPage,
    TResult Function(LatLng position)? setCurrentPosition,
    TResult Function()? resetState,
    TResult Function()? setLoading,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAlarm value) sendAlarm,
    required TResult Function(_SelectAlarm value) selectAlarm,
    required TResult Function(_SetStartEngine value) setStartEngine,
    required TResult Function(_SetPage value) setPage,
    required TResult Function(_SetCurrentPosition value) setCurrentPosition,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SetLoading value) setLoading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
    TResult? Function(_SetPage value)? setPage,
    TResult? Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SetLoading value)? setLoading,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    TResult Function(_SetPage value)? setPage,
    TResult Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SetLoading value)? setLoading,
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
    required TResult Function(int pageIndex) setPage,
    required TResult Function(LatLng position) setCurrentPosition,
    required TResult Function() resetState,
    required TResult Function() setLoading,
  }) {
    return sendAlarm(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
    TResult? Function(int pageIndex)? setPage,
    TResult? Function(LatLng position)? setCurrentPosition,
    TResult? Function()? resetState,
    TResult? Function()? setLoading,
  }) {
    return sendAlarm?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    TResult Function(int pageIndex)? setPage,
    TResult Function(LatLng position)? setCurrentPosition,
    TResult Function()? resetState,
    TResult Function()? setLoading,
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
    required TResult Function(_SetPage value) setPage,
    required TResult Function(_SetCurrentPosition value) setCurrentPosition,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SetLoading value) setLoading,
  }) {
    return sendAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
    TResult? Function(_SetPage value)? setPage,
    TResult? Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SetLoading value)? setLoading,
  }) {
    return sendAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    TResult Function(_SetPage value)? setPage,
    TResult Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SetLoading value)? setLoading,
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
    required TResult Function(int pageIndex) setPage,
    required TResult Function(LatLng position) setCurrentPosition,
    required TResult Function() resetState,
    required TResult Function() setLoading,
  }) {
    return selectAlarm(alarm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
    TResult? Function(int pageIndex)? setPage,
    TResult? Function(LatLng position)? setCurrentPosition,
    TResult? Function()? resetState,
    TResult? Function()? setLoading,
  }) {
    return selectAlarm?.call(alarm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    TResult Function(int pageIndex)? setPage,
    TResult Function(LatLng position)? setCurrentPosition,
    TResult Function()? resetState,
    TResult Function()? setLoading,
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
    required TResult Function(_SetPage value) setPage,
    required TResult Function(_SetCurrentPosition value) setCurrentPosition,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SetLoading value) setLoading,
  }) {
    return selectAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
    TResult? Function(_SetPage value)? setPage,
    TResult? Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SetLoading value)? setLoading,
  }) {
    return selectAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    TResult Function(_SetPage value)? setPage,
    TResult Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SetLoading value)? setLoading,
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
    required TResult Function(int pageIndex) setPage,
    required TResult Function(LatLng position) setCurrentPosition,
    required TResult Function() resetState,
    required TResult Function() setLoading,
  }) {
    return setStartEngine(isStart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
    TResult? Function(int pageIndex)? setPage,
    TResult? Function(LatLng position)? setCurrentPosition,
    TResult? Function()? resetState,
    TResult? Function()? setLoading,
  }) {
    return setStartEngine?.call(isStart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    TResult Function(int pageIndex)? setPage,
    TResult Function(LatLng position)? setCurrentPosition,
    TResult Function()? resetState,
    TResult Function()? setLoading,
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
    required TResult Function(_SetPage value) setPage,
    required TResult Function(_SetCurrentPosition value) setCurrentPosition,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SetLoading value) setLoading,
  }) {
    return setStartEngine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
    TResult? Function(_SetPage value)? setPage,
    TResult? Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SetLoading value)? setLoading,
  }) {
    return setStartEngine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    TResult Function(_SetPage value)? setPage,
    TResult Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SetLoading value)? setLoading,
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

/// @nodoc
abstract class _$$SetPageImplCopyWith<$Res> {
  factory _$$SetPageImplCopyWith(
    _$SetPageImpl value,
    $Res Function(_$SetPageImpl) then,
  ) = __$$SetPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class __$$SetPageImplCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$SetPageImpl>
    implements _$$SetPageImplCopyWith<$Res> {
  __$$SetPageImplCopyWithImpl(
    _$SetPageImpl _value,
    $Res Function(_$SetPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pageIndex = null}) {
    return _then(
      _$SetPageImpl(
        null == pageIndex
            ? _value.pageIndex
            : pageIndex // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SetPageImpl implements _SetPage {
  const _$SetPageImpl(this.pageIndex);

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'AlarmEvent.setPage(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPageImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPageImplCopyWith<_$SetPageImpl> get copyWith =>
      __$$SetPageImplCopyWithImpl<_$SetPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel model) sendAlarm,
    required TResult Function(String alarm) selectAlarm,
    required TResult Function(bool isStart) setStartEngine,
    required TResult Function(int pageIndex) setPage,
    required TResult Function(LatLng position) setCurrentPosition,
    required TResult Function() resetState,
    required TResult Function() setLoading,
  }) {
    return setPage(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
    TResult? Function(int pageIndex)? setPage,
    TResult? Function(LatLng position)? setCurrentPosition,
    TResult? Function()? resetState,
    TResult? Function()? setLoading,
  }) {
    return setPage?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    TResult Function(int pageIndex)? setPage,
    TResult Function(LatLng position)? setCurrentPosition,
    TResult Function()? resetState,
    TResult Function()? setLoading,
    required TResult orElse(),
  }) {
    if (setPage != null) {
      return setPage(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAlarm value) sendAlarm,
    required TResult Function(_SelectAlarm value) selectAlarm,
    required TResult Function(_SetStartEngine value) setStartEngine,
    required TResult Function(_SetPage value) setPage,
    required TResult Function(_SetCurrentPosition value) setCurrentPosition,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SetLoading value) setLoading,
  }) {
    return setPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
    TResult? Function(_SetPage value)? setPage,
    TResult? Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SetLoading value)? setLoading,
  }) {
    return setPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    TResult Function(_SetPage value)? setPage,
    TResult Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SetLoading value)? setLoading,
    required TResult orElse(),
  }) {
    if (setPage != null) {
      return setPage(this);
    }
    return orElse();
  }
}

abstract class _SetPage implements AlarmEvent {
  const factory _SetPage(final int pageIndex) = _$SetPageImpl;

  int get pageIndex;

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPageImplCopyWith<_$SetPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCurrentPositionImplCopyWith<$Res> {
  factory _$$SetCurrentPositionImplCopyWith(
    _$SetCurrentPositionImpl value,
    $Res Function(_$SetCurrentPositionImpl) then,
  ) = __$$SetCurrentPositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng position});
}

/// @nodoc
class __$$SetCurrentPositionImplCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$SetCurrentPositionImpl>
    implements _$$SetCurrentPositionImplCopyWith<$Res> {
  __$$SetCurrentPositionImplCopyWithImpl(
    _$SetCurrentPositionImpl _value,
    $Res Function(_$SetCurrentPositionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? position = null}) {
    return _then(
      _$SetCurrentPositionImpl(
        null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as LatLng,
      ),
    );
  }
}

/// @nodoc

class _$SetCurrentPositionImpl implements _SetCurrentPosition {
  const _$SetCurrentPositionImpl(this.position);

  @override
  final LatLng position;

  @override
  String toString() {
    return 'AlarmEvent.setCurrentPosition(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCurrentPositionImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCurrentPositionImplCopyWith<_$SetCurrentPositionImpl> get copyWith =>
      __$$SetCurrentPositionImplCopyWithImpl<_$SetCurrentPositionImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel model) sendAlarm,
    required TResult Function(String alarm) selectAlarm,
    required TResult Function(bool isStart) setStartEngine,
    required TResult Function(int pageIndex) setPage,
    required TResult Function(LatLng position) setCurrentPosition,
    required TResult Function() resetState,
    required TResult Function() setLoading,
  }) {
    return setCurrentPosition(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
    TResult? Function(int pageIndex)? setPage,
    TResult? Function(LatLng position)? setCurrentPosition,
    TResult? Function()? resetState,
    TResult? Function()? setLoading,
  }) {
    return setCurrentPosition?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    TResult Function(int pageIndex)? setPage,
    TResult Function(LatLng position)? setCurrentPosition,
    TResult Function()? resetState,
    TResult Function()? setLoading,
    required TResult orElse(),
  }) {
    if (setCurrentPosition != null) {
      return setCurrentPosition(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAlarm value) sendAlarm,
    required TResult Function(_SelectAlarm value) selectAlarm,
    required TResult Function(_SetStartEngine value) setStartEngine,
    required TResult Function(_SetPage value) setPage,
    required TResult Function(_SetCurrentPosition value) setCurrentPosition,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SetLoading value) setLoading,
  }) {
    return setCurrentPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
    TResult? Function(_SetPage value)? setPage,
    TResult? Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SetLoading value)? setLoading,
  }) {
    return setCurrentPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    TResult Function(_SetPage value)? setPage,
    TResult Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SetLoading value)? setLoading,
    required TResult orElse(),
  }) {
    if (setCurrentPosition != null) {
      return setCurrentPosition(this);
    }
    return orElse();
  }
}

abstract class _SetCurrentPosition implements AlarmEvent {
  const factory _SetCurrentPosition(final LatLng position) =
      _$SetCurrentPositionImpl;

  LatLng get position;

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCurrentPositionImplCopyWith<_$SetCurrentPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStateImplCopyWith<$Res> {
  factory _$$ResetStateImplCopyWith(
    _$ResetStateImpl value,
    $Res Function(_$ResetStateImpl) then,
  ) = __$$ResetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateImplCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$ResetStateImpl>
    implements _$$ResetStateImplCopyWith<$Res> {
  __$$ResetStateImplCopyWithImpl(
    _$ResetStateImpl _value,
    $Res Function(_$ResetStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetStateImpl implements _ResetState {
  const _$ResetStateImpl();

  @override
  String toString() {
    return 'AlarmEvent.resetState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel model) sendAlarm,
    required TResult Function(String alarm) selectAlarm,
    required TResult Function(bool isStart) setStartEngine,
    required TResult Function(int pageIndex) setPage,
    required TResult Function(LatLng position) setCurrentPosition,
    required TResult Function() resetState,
    required TResult Function() setLoading,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
    TResult? Function(int pageIndex)? setPage,
    TResult? Function(LatLng position)? setCurrentPosition,
    TResult? Function()? resetState,
    TResult? Function()? setLoading,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    TResult Function(int pageIndex)? setPage,
    TResult Function(LatLng position)? setCurrentPosition,
    TResult Function()? resetState,
    TResult Function()? setLoading,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAlarm value) sendAlarm,
    required TResult Function(_SelectAlarm value) selectAlarm,
    required TResult Function(_SetStartEngine value) setStartEngine,
    required TResult Function(_SetPage value) setPage,
    required TResult Function(_SetCurrentPosition value) setCurrentPosition,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SetLoading value) setLoading,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
    TResult? Function(_SetPage value)? setPage,
    TResult? Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SetLoading value)? setLoading,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    TResult Function(_SetPage value)? setPage,
    TResult Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SetLoading value)? setLoading,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements AlarmEvent {
  const factory _ResetState() = _$ResetStateImpl;
}

/// @nodoc
abstract class _$$SetLoadingImplCopyWith<$Res> {
  factory _$$SetLoadingImplCopyWith(
    _$SetLoadingImpl value,
    $Res Function(_$SetLoadingImpl) then,
  ) = __$$SetLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetLoadingImplCopyWithImpl<$Res>
    extends _$AlarmEventCopyWithImpl<$Res, _$SetLoadingImpl>
    implements _$$SetLoadingImplCopyWith<$Res> {
  __$$SetLoadingImplCopyWithImpl(
    _$SetLoadingImpl _value,
    $Res Function(_$SetLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SetLoadingImpl implements _SetLoading {
  const _$SetLoadingImpl();

  @override
  String toString() {
    return 'AlarmEvent.setLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SetLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel model) sendAlarm,
    required TResult Function(String alarm) selectAlarm,
    required TResult Function(bool isStart) setStartEngine,
    required TResult Function(int pageIndex) setPage,
    required TResult Function(LatLng position) setCurrentPosition,
    required TResult Function() resetState,
    required TResult Function() setLoading,
  }) {
    return setLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
    TResult? Function(String alarm)? selectAlarm,
    TResult? Function(bool isStart)? setStartEngine,
    TResult? Function(int pageIndex)? setPage,
    TResult? Function(LatLng position)? setCurrentPosition,
    TResult? Function()? resetState,
    TResult? Function()? setLoading,
  }) {
    return setLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    TResult Function(String alarm)? selectAlarm,
    TResult Function(bool isStart)? setStartEngine,
    TResult Function(int pageIndex)? setPage,
    TResult Function(LatLng position)? setCurrentPosition,
    TResult Function()? resetState,
    TResult Function()? setLoading,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAlarm value) sendAlarm,
    required TResult Function(_SelectAlarm value) selectAlarm,
    required TResult Function(_SetStartEngine value) setStartEngine,
    required TResult Function(_SetPage value) setPage,
    required TResult Function(_SetCurrentPosition value) setCurrentPosition,
    required TResult Function(_ResetState value) resetState,
    required TResult Function(_SetLoading value) setLoading,
  }) {
    return setLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
    TResult? Function(_SelectAlarm value)? selectAlarm,
    TResult? Function(_SetStartEngine value)? setStartEngine,
    TResult? Function(_SetPage value)? setPage,
    TResult? Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult? Function(_ResetState value)? resetState,
    TResult? Function(_SetLoading value)? setLoading,
  }) {
    return setLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    TResult Function(_SelectAlarm value)? selectAlarm,
    TResult Function(_SetStartEngine value)? setStartEngine,
    TResult Function(_SetPage value)? setPage,
    TResult Function(_SetCurrentPosition value)? setCurrentPosition,
    TResult Function(_ResetState value)? resetState,
    TResult Function(_SetLoading value)? setLoading,
    required TResult orElse(),
  }) {
    if (setLoading != null) {
      return setLoading(this);
    }
    return orElse();
  }
}

abstract class _SetLoading implements AlarmEvent {
  const factory _SetLoading() = _$SetLoadingImpl;
}
