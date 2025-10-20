// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_view_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AlarmViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng latLng, DateTime alarmTimestamp) load,
    required TResult Function(int page) setPageInsures,
    required TResult Function(int page) setPageWorkshops,
    required TResult Function() updateTimer,
    required TResult Function(int reportId) callRequest,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult? Function(int page)? setPageInsures,
    TResult? Function(int page)? setPageWorkshops,
    TResult? Function()? updateTimer,
    TResult? Function(int reportId)? callRequest,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult Function(int page)? setPageInsures,
    TResult Function(int page)? setPageWorkshops,
    TResult Function()? updateTimer,
    TResult Function(int reportId)? callRequest,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlarmData value) load,
    required TResult Function(SetPageInsures value) setPageInsures,
    required TResult Function(setPageWorkshops value) setPageWorkshops,
    required TResult Function(UpdateTimer value) updateTimer,
    required TResult Function(CallRequestEvent value) callRequest,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
    TResult? Function(SetPageInsures value)? setPageInsures,
    TResult? Function(setPageWorkshops value)? setPageWorkshops,
    TResult? Function(UpdateTimer value)? updateTimer,
    TResult? Function(CallRequestEvent value)? callRequest,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    TResult Function(SetPageInsures value)? setPageInsures,
    TResult Function(setPageWorkshops value)? setPageWorkshops,
    TResult Function(UpdateTimer value)? updateTimer,
    TResult Function(CallRequestEvent value)? callRequest,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmViewEventCopyWith<$Res> {
  factory $AlarmViewEventCopyWith(
    AlarmViewEvent value,
    $Res Function(AlarmViewEvent) then,
  ) = _$AlarmViewEventCopyWithImpl<$Res, AlarmViewEvent>;
}

/// @nodoc
class _$AlarmViewEventCopyWithImpl<$Res, $Val extends AlarmViewEvent>
    implements $AlarmViewEventCopyWith<$Res> {
  _$AlarmViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadAlarmDataImplCopyWith<$Res> {
  factory _$$LoadAlarmDataImplCopyWith(
    _$LoadAlarmDataImpl value,
    $Res Function(_$LoadAlarmDataImpl) then,
  ) = __$$LoadAlarmDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng latLng, DateTime alarmTimestamp});
}

/// @nodoc
class __$$LoadAlarmDataImplCopyWithImpl<$Res>
    extends _$AlarmViewEventCopyWithImpl<$Res, _$LoadAlarmDataImpl>
    implements _$$LoadAlarmDataImplCopyWith<$Res> {
  __$$LoadAlarmDataImplCopyWithImpl(
    _$LoadAlarmDataImpl _value,
    $Res Function(_$LoadAlarmDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? latLng = null, Object? alarmTimestamp = null}) {
    return _then(
      _$LoadAlarmDataImpl(
        null == latLng
            ? _value.latLng
            : latLng // ignore: cast_nullable_to_non_nullable
                  as LatLng,
        null == alarmTimestamp
            ? _value.alarmTimestamp
            : alarmTimestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$LoadAlarmDataImpl implements LoadAlarmData {
  const _$LoadAlarmDataImpl(this.latLng, this.alarmTimestamp);

  @override
  final LatLng latLng;
  @override
  final DateTime alarmTimestamp;

  @override
  String toString() {
    return 'AlarmViewEvent.load(latLng: $latLng, alarmTimestamp: $alarmTimestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAlarmDataImpl &&
            (identical(other.latLng, latLng) || other.latLng == latLng) &&
            (identical(other.alarmTimestamp, alarmTimestamp) ||
                other.alarmTimestamp == alarmTimestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng, alarmTimestamp);

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAlarmDataImplCopyWith<_$LoadAlarmDataImpl> get copyWith =>
      __$$LoadAlarmDataImplCopyWithImpl<_$LoadAlarmDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng latLng, DateTime alarmTimestamp) load,
    required TResult Function(int page) setPageInsures,
    required TResult Function(int page) setPageWorkshops,
    required TResult Function() updateTimer,
    required TResult Function(int reportId) callRequest,
  }) {
    return load(latLng, alarmTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult? Function(int page)? setPageInsures,
    TResult? Function(int page)? setPageWorkshops,
    TResult? Function()? updateTimer,
    TResult? Function(int reportId)? callRequest,
  }) {
    return load?.call(latLng, alarmTimestamp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult Function(int page)? setPageInsures,
    TResult Function(int page)? setPageWorkshops,
    TResult Function()? updateTimer,
    TResult Function(int reportId)? callRequest,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(latLng, alarmTimestamp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlarmData value) load,
    required TResult Function(SetPageInsures value) setPageInsures,
    required TResult Function(setPageWorkshops value) setPageWorkshops,
    required TResult Function(UpdateTimer value) updateTimer,
    required TResult Function(CallRequestEvent value) callRequest,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
    TResult? Function(SetPageInsures value)? setPageInsures,
    TResult? Function(setPageWorkshops value)? setPageWorkshops,
    TResult? Function(UpdateTimer value)? updateTimer,
    TResult? Function(CallRequestEvent value)? callRequest,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    TResult Function(SetPageInsures value)? setPageInsures,
    TResult Function(setPageWorkshops value)? setPageWorkshops,
    TResult Function(UpdateTimer value)? updateTimer,
    TResult Function(CallRequestEvent value)? callRequest,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadAlarmData implements AlarmViewEvent {
  const factory LoadAlarmData(
    final LatLng latLng,
    final DateTime alarmTimestamp,
  ) = _$LoadAlarmDataImpl;

  LatLng get latLng;
  DateTime get alarmTimestamp;

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAlarmDataImplCopyWith<_$LoadAlarmDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPageInsuresImplCopyWith<$Res> {
  factory _$$SetPageInsuresImplCopyWith(
    _$SetPageInsuresImpl value,
    $Res Function(_$SetPageInsuresImpl) then,
  ) = __$$SetPageInsuresImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$SetPageInsuresImplCopyWithImpl<$Res>
    extends _$AlarmViewEventCopyWithImpl<$Res, _$SetPageInsuresImpl>
    implements _$$SetPageInsuresImplCopyWith<$Res> {
  __$$SetPageInsuresImplCopyWithImpl(
    _$SetPageInsuresImpl _value,
    $Res Function(_$SetPageInsuresImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null}) {
    return _then(
      _$SetPageInsuresImpl(
        null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$SetPageInsuresImpl implements SetPageInsures {
  const _$SetPageInsuresImpl(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'AlarmViewEvent.setPageInsures(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPageInsuresImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPageInsuresImplCopyWith<_$SetPageInsuresImpl> get copyWith =>
      __$$SetPageInsuresImplCopyWithImpl<_$SetPageInsuresImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng latLng, DateTime alarmTimestamp) load,
    required TResult Function(int page) setPageInsures,
    required TResult Function(int page) setPageWorkshops,
    required TResult Function() updateTimer,
    required TResult Function(int reportId) callRequest,
  }) {
    return setPageInsures(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult? Function(int page)? setPageInsures,
    TResult? Function(int page)? setPageWorkshops,
    TResult? Function()? updateTimer,
    TResult? Function(int reportId)? callRequest,
  }) {
    return setPageInsures?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult Function(int page)? setPageInsures,
    TResult Function(int page)? setPageWorkshops,
    TResult Function()? updateTimer,
    TResult Function(int reportId)? callRequest,
    required TResult orElse(),
  }) {
    if (setPageInsures != null) {
      return setPageInsures(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlarmData value) load,
    required TResult Function(SetPageInsures value) setPageInsures,
    required TResult Function(setPageWorkshops value) setPageWorkshops,
    required TResult Function(UpdateTimer value) updateTimer,
    required TResult Function(CallRequestEvent value) callRequest,
  }) {
    return setPageInsures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
    TResult? Function(SetPageInsures value)? setPageInsures,
    TResult? Function(setPageWorkshops value)? setPageWorkshops,
    TResult? Function(UpdateTimer value)? updateTimer,
    TResult? Function(CallRequestEvent value)? callRequest,
  }) {
    return setPageInsures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    TResult Function(SetPageInsures value)? setPageInsures,
    TResult Function(setPageWorkshops value)? setPageWorkshops,
    TResult Function(UpdateTimer value)? updateTimer,
    TResult Function(CallRequestEvent value)? callRequest,
    required TResult orElse(),
  }) {
    if (setPageInsures != null) {
      return setPageInsures(this);
    }
    return orElse();
  }
}

abstract class SetPageInsures implements AlarmViewEvent {
  const factory SetPageInsures(final int page) = _$SetPageInsuresImpl;

  int get page;

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetPageInsuresImplCopyWith<_$SetPageInsuresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$setPageWorkshopsImplCopyWith<$Res> {
  factory _$$setPageWorkshopsImplCopyWith(
    _$setPageWorkshopsImpl value,
    $Res Function(_$setPageWorkshopsImpl) then,
  ) = __$$setPageWorkshopsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$setPageWorkshopsImplCopyWithImpl<$Res>
    extends _$AlarmViewEventCopyWithImpl<$Res, _$setPageWorkshopsImpl>
    implements _$$setPageWorkshopsImplCopyWith<$Res> {
  __$$setPageWorkshopsImplCopyWithImpl(
    _$setPageWorkshopsImpl _value,
    $Res Function(_$setPageWorkshopsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? page = null}) {
    return _then(
      _$setPageWorkshopsImpl(
        null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$setPageWorkshopsImpl implements setPageWorkshops {
  const _$setPageWorkshopsImpl(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'AlarmViewEvent.setPageWorkshops(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setPageWorkshopsImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$setPageWorkshopsImplCopyWith<_$setPageWorkshopsImpl> get copyWith =>
      __$$setPageWorkshopsImplCopyWithImpl<_$setPageWorkshopsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng latLng, DateTime alarmTimestamp) load,
    required TResult Function(int page) setPageInsures,
    required TResult Function(int page) setPageWorkshops,
    required TResult Function() updateTimer,
    required TResult Function(int reportId) callRequest,
  }) {
    return setPageWorkshops(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult? Function(int page)? setPageInsures,
    TResult? Function(int page)? setPageWorkshops,
    TResult? Function()? updateTimer,
    TResult? Function(int reportId)? callRequest,
  }) {
    return setPageWorkshops?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult Function(int page)? setPageInsures,
    TResult Function(int page)? setPageWorkshops,
    TResult Function()? updateTimer,
    TResult Function(int reportId)? callRequest,
    required TResult orElse(),
  }) {
    if (setPageWorkshops != null) {
      return setPageWorkshops(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlarmData value) load,
    required TResult Function(SetPageInsures value) setPageInsures,
    required TResult Function(setPageWorkshops value) setPageWorkshops,
    required TResult Function(UpdateTimer value) updateTimer,
    required TResult Function(CallRequestEvent value) callRequest,
  }) {
    return setPageWorkshops(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
    TResult? Function(SetPageInsures value)? setPageInsures,
    TResult? Function(setPageWorkshops value)? setPageWorkshops,
    TResult? Function(UpdateTimer value)? updateTimer,
    TResult? Function(CallRequestEvent value)? callRequest,
  }) {
    return setPageWorkshops?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    TResult Function(SetPageInsures value)? setPageInsures,
    TResult Function(setPageWorkshops value)? setPageWorkshops,
    TResult Function(UpdateTimer value)? updateTimer,
    TResult Function(CallRequestEvent value)? callRequest,
    required TResult orElse(),
  }) {
    if (setPageWorkshops != null) {
      return setPageWorkshops(this);
    }
    return orElse();
  }
}

abstract class setPageWorkshops implements AlarmViewEvent {
  const factory setPageWorkshops(final int page) = _$setPageWorkshopsImpl;

  int get page;

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$setPageWorkshopsImplCopyWith<_$setPageWorkshopsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTimerImplCopyWith<$Res> {
  factory _$$UpdateTimerImplCopyWith(
    _$UpdateTimerImpl value,
    $Res Function(_$UpdateTimerImpl) then,
  ) = __$$UpdateTimerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateTimerImplCopyWithImpl<$Res>
    extends _$AlarmViewEventCopyWithImpl<$Res, _$UpdateTimerImpl>
    implements _$$UpdateTimerImplCopyWith<$Res> {
  __$$UpdateTimerImplCopyWithImpl(
    _$UpdateTimerImpl _value,
    $Res Function(_$UpdateTimerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateTimerImpl implements UpdateTimer {
  const _$UpdateTimerImpl();

  @override
  String toString() {
    return 'AlarmViewEvent.updateTimer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateTimerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng latLng, DateTime alarmTimestamp) load,
    required TResult Function(int page) setPageInsures,
    required TResult Function(int page) setPageWorkshops,
    required TResult Function() updateTimer,
    required TResult Function(int reportId) callRequest,
  }) {
    return updateTimer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult? Function(int page)? setPageInsures,
    TResult? Function(int page)? setPageWorkshops,
    TResult? Function()? updateTimer,
    TResult? Function(int reportId)? callRequest,
  }) {
    return updateTimer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult Function(int page)? setPageInsures,
    TResult Function(int page)? setPageWorkshops,
    TResult Function()? updateTimer,
    TResult Function(int reportId)? callRequest,
    required TResult orElse(),
  }) {
    if (updateTimer != null) {
      return updateTimer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlarmData value) load,
    required TResult Function(SetPageInsures value) setPageInsures,
    required TResult Function(setPageWorkshops value) setPageWorkshops,
    required TResult Function(UpdateTimer value) updateTimer,
    required TResult Function(CallRequestEvent value) callRequest,
  }) {
    return updateTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
    TResult? Function(SetPageInsures value)? setPageInsures,
    TResult? Function(setPageWorkshops value)? setPageWorkshops,
    TResult? Function(UpdateTimer value)? updateTimer,
    TResult? Function(CallRequestEvent value)? callRequest,
  }) {
    return updateTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    TResult Function(SetPageInsures value)? setPageInsures,
    TResult Function(setPageWorkshops value)? setPageWorkshops,
    TResult Function(UpdateTimer value)? updateTimer,
    TResult Function(CallRequestEvent value)? callRequest,
    required TResult orElse(),
  }) {
    if (updateTimer != null) {
      return updateTimer(this);
    }
    return orElse();
  }
}

abstract class UpdateTimer implements AlarmViewEvent {
  const factory UpdateTimer() = _$UpdateTimerImpl;
}

/// @nodoc
abstract class _$$CallRequestEventImplCopyWith<$Res> {
  factory _$$CallRequestEventImplCopyWith(
    _$CallRequestEventImpl value,
    $Res Function(_$CallRequestEventImpl) then,
  ) = __$$CallRequestEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reportId});
}

/// @nodoc
class __$$CallRequestEventImplCopyWithImpl<$Res>
    extends _$AlarmViewEventCopyWithImpl<$Res, _$CallRequestEventImpl>
    implements _$$CallRequestEventImplCopyWith<$Res> {
  __$$CallRequestEventImplCopyWithImpl(
    _$CallRequestEventImpl _value,
    $Res Function(_$CallRequestEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? reportId = null}) {
    return _then(
      _$CallRequestEventImpl(
        null == reportId
            ? _value.reportId
            : reportId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$CallRequestEventImpl implements CallRequestEvent {
  const _$CallRequestEventImpl(this.reportId);

  @override
  final int reportId;

  @override
  String toString() {
    return 'AlarmViewEvent.callRequest(reportId: $reportId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallRequestEventImpl &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reportId);

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallRequestEventImplCopyWith<_$CallRequestEventImpl> get copyWith =>
      __$$CallRequestEventImplCopyWithImpl<_$CallRequestEventImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng latLng, DateTime alarmTimestamp) load,
    required TResult Function(int page) setPageInsures,
    required TResult Function(int page) setPageWorkshops,
    required TResult Function() updateTimer,
    required TResult Function(int reportId) callRequest,
  }) {
    return callRequest(reportId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult? Function(int page)? setPageInsures,
    TResult? Function(int page)? setPageWorkshops,
    TResult? Function()? updateTimer,
    TResult? Function(int reportId)? callRequest,
  }) {
    return callRequest?.call(reportId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng, DateTime alarmTimestamp)? load,
    TResult Function(int page)? setPageInsures,
    TResult Function(int page)? setPageWorkshops,
    TResult Function()? updateTimer,
    TResult Function(int reportId)? callRequest,
    required TResult orElse(),
  }) {
    if (callRequest != null) {
      return callRequest(reportId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlarmData value) load,
    required TResult Function(SetPageInsures value) setPageInsures,
    required TResult Function(setPageWorkshops value) setPageWorkshops,
    required TResult Function(UpdateTimer value) updateTimer,
    required TResult Function(CallRequestEvent value) callRequest,
  }) {
    return callRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
    TResult? Function(SetPageInsures value)? setPageInsures,
    TResult? Function(setPageWorkshops value)? setPageWorkshops,
    TResult? Function(UpdateTimer value)? updateTimer,
    TResult? Function(CallRequestEvent value)? callRequest,
  }) {
    return callRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    TResult Function(SetPageInsures value)? setPageInsures,
    TResult Function(setPageWorkshops value)? setPageWorkshops,
    TResult Function(UpdateTimer value)? updateTimer,
    TResult Function(CallRequestEvent value)? callRequest,
    required TResult orElse(),
  }) {
    if (callRequest != null) {
      return callRequest(this);
    }
    return orElse();
  }
}

abstract class CallRequestEvent implements AlarmViewEvent {
  const factory CallRequestEvent(final int reportId) = _$CallRequestEventImpl;

  int get reportId;

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallRequestEventImplCopyWith<_$CallRequestEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
