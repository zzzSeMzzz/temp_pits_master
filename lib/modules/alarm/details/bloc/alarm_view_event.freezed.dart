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
    required TResult Function(LatLng latLng) load,
    required TResult Function(int page) setPageInsures,
    required TResult Function(int page) setPageWorkshops,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng)? load,
    TResult? Function(int page)? setPageInsures,
    TResult? Function(int page)? setPageWorkshops,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng)? load,
    TResult Function(int page)? setPageInsures,
    TResult Function(int page)? setPageWorkshops,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlarmData value) load,
    required TResult Function(SetPageInsures value) setPageInsures,
    required TResult Function(setPageWorkshops value) setPageWorkshops,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
    TResult? Function(SetPageInsures value)? setPageInsures,
    TResult? Function(setPageWorkshops value)? setPageWorkshops,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    TResult Function(SetPageInsures value)? setPageInsures,
    TResult Function(setPageWorkshops value)? setPageWorkshops,
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
  $Res call({LatLng latLng});
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
  $Res call({Object? latLng = null}) {
    return _then(
      _$LoadAlarmDataImpl(
        null == latLng
            ? _value.latLng
            : latLng // ignore: cast_nullable_to_non_nullable
                  as LatLng,
      ),
    );
  }
}

/// @nodoc

class _$LoadAlarmDataImpl implements LoadAlarmData {
  const _$LoadAlarmDataImpl(this.latLng);

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'AlarmViewEvent.load(latLng: $latLng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAlarmDataImpl &&
            (identical(other.latLng, latLng) || other.latLng == latLng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng);

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
    required TResult Function(LatLng latLng) load,
    required TResult Function(int page) setPageInsures,
    required TResult Function(int page) setPageWorkshops,
  }) {
    return load(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng)? load,
    TResult? Function(int page)? setPageInsures,
    TResult? Function(int page)? setPageWorkshops,
  }) {
    return load?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng)? load,
    TResult Function(int page)? setPageInsures,
    TResult Function(int page)? setPageWorkshops,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlarmData value) load,
    required TResult Function(SetPageInsures value) setPageInsures,
    required TResult Function(setPageWorkshops value) setPageWorkshops,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
    TResult? Function(SetPageInsures value)? setPageInsures,
    TResult? Function(setPageWorkshops value)? setPageWorkshops,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    TResult Function(SetPageInsures value)? setPageInsures,
    TResult Function(setPageWorkshops value)? setPageWorkshops,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadAlarmData implements AlarmViewEvent {
  const factory LoadAlarmData(final LatLng latLng) = _$LoadAlarmDataImpl;

  LatLng get latLng;

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
    required TResult Function(LatLng latLng) load,
    required TResult Function(int page) setPageInsures,
    required TResult Function(int page) setPageWorkshops,
  }) {
    return setPageInsures(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng)? load,
    TResult? Function(int page)? setPageInsures,
    TResult? Function(int page)? setPageWorkshops,
  }) {
    return setPageInsures?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng)? load,
    TResult Function(int page)? setPageInsures,
    TResult Function(int page)? setPageWorkshops,
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
  }) {
    return setPageInsures(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
    TResult? Function(SetPageInsures value)? setPageInsures,
    TResult? Function(setPageWorkshops value)? setPageWorkshops,
  }) {
    return setPageInsures?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    TResult Function(SetPageInsures value)? setPageInsures,
    TResult Function(setPageWorkshops value)? setPageWorkshops,
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
    required TResult Function(LatLng latLng) load,
    required TResult Function(int page) setPageInsures,
    required TResult Function(int page) setPageWorkshops,
  }) {
    return setPageWorkshops(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng)? load,
    TResult? Function(int page)? setPageInsures,
    TResult? Function(int page)? setPageWorkshops,
  }) {
    return setPageWorkshops?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng)? load,
    TResult Function(int page)? setPageInsures,
    TResult Function(int page)? setPageWorkshops,
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
  }) {
    return setPageWorkshops(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
    TResult? Function(SetPageInsures value)? setPageInsures,
    TResult? Function(setPageWorkshops value)? setPageWorkshops,
  }) {
    return setPageWorkshops?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    TResult Function(SetPageInsures value)? setPageInsures,
    TResult Function(setPageWorkshops value)? setPageWorkshops,
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
