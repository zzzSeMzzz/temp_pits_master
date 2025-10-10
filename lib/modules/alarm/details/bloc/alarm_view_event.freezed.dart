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
  LatLng get latLng => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng latLng) load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng)? load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng)? load,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAlarmData value) load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlarmViewEventCopyWith<AlarmViewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmViewEventCopyWith<$Res> {
  factory $AlarmViewEventCopyWith(
    AlarmViewEvent value,
    $Res Function(AlarmViewEvent) then,
  ) = _$AlarmViewEventCopyWithImpl<$Res, AlarmViewEvent>;
  @useResult
  $Res call({LatLng latLng});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? latLng = null}) {
    return _then(
      _value.copyWith(
            latLng: null == latLng
                ? _value.latLng
                : latLng // ignore: cast_nullable_to_non_nullable
                      as LatLng,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoadAlarmDataImplCopyWith<$Res>
    implements $AlarmViewEventCopyWith<$Res> {
  factory _$$LoadAlarmDataImplCopyWith(
    _$LoadAlarmDataImpl value,
    $Res Function(_$LoadAlarmDataImpl) then,
  ) = __$$LoadAlarmDataImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return load(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng latLng)? load,
  }) {
    return load?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng)? load,
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
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAlarmData value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAlarmData value)? load,
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

  @override
  LatLng get latLng;

  /// Create a copy of AlarmViewEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadAlarmDataImplCopyWith<_$LoadAlarmDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
