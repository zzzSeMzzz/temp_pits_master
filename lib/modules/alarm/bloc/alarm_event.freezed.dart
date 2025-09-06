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
  AlarmModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AlarmModel model) sendAlarm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendAlarm value) sendAlarm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlarmEventCopyWith<AlarmEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmEventCopyWith<$Res> {
  factory $AlarmEventCopyWith(
    AlarmEvent value,
    $Res Function(AlarmEvent) then,
  ) = _$AlarmEventCopyWithImpl<$Res, AlarmEvent>;
  @useResult
  $Res call({AlarmModel model});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? model = null}) {
    return _then(
      _value.copyWith(
            model: null == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                      as AlarmModel,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SendAlarmImplCopyWith<$Res>
    implements $AlarmEventCopyWith<$Res> {
  factory _$$SendAlarmImplCopyWith(
    _$SendAlarmImpl value,
    $Res Function(_$SendAlarmImpl) then,
  ) = __$$SendAlarmImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return sendAlarm(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AlarmModel model)? sendAlarm,
  }) {
    return sendAlarm?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AlarmModel model)? sendAlarm,
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
  }) {
    return sendAlarm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SendAlarm value)? sendAlarm,
  }) {
    return sendAlarm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendAlarm value)? sendAlarm,
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

  @override
  AlarmModel get model;

  /// Create a copy of AlarmEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendAlarmImplCopyWith<_$SendAlarmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
