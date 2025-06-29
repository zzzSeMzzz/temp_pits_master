// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_single_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceSingleEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleService value) getSingleService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleService value)? getSingleService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleService value)? getSingleService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ServiceSingleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceSingleEventCopyWith<ServiceSingleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceSingleEventCopyWith<$Res> {
  factory $ServiceSingleEventCopyWith(
          ServiceSingleEvent value, $Res Function(ServiceSingleEvent) then) =
      _$ServiceSingleEventCopyWithImpl<$Res, ServiceSingleEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$ServiceSingleEventCopyWithImpl<$Res, $Val extends ServiceSingleEvent>
    implements $ServiceSingleEventCopyWith<$Res> {
  _$ServiceSingleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceSingleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSingleServiceImplCopyWith<$Res>
    implements $ServiceSingleEventCopyWith<$Res> {
  factory _$$GetSingleServiceImplCopyWith(_$GetSingleServiceImpl value,
          $Res Function(_$GetSingleServiceImpl) then) =
      __$$GetSingleServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetSingleServiceImplCopyWithImpl<$Res>
    extends _$ServiceSingleEventCopyWithImpl<$Res, _$GetSingleServiceImpl>
    implements _$$GetSingleServiceImplCopyWith<$Res> {
  __$$GetSingleServiceImplCopyWithImpl(_$GetSingleServiceImpl _value,
      $Res Function(_$GetSingleServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceSingleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetSingleServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSingleServiceImpl implements _GetSingleService {
  const _$GetSingleServiceImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'ServiceSingleEvent.getSingleService(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleServiceImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ServiceSingleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSingleServiceImplCopyWith<_$GetSingleServiceImpl> get copyWith =>
      __$$GetSingleServiceImplCopyWithImpl<_$GetSingleServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getSingleService,
  }) {
    return getSingleService(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getSingleService,
  }) {
    return getSingleService?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getSingleService,
    required TResult orElse(),
  }) {
    if (getSingleService != null) {
      return getSingleService(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSingleService value) getSingleService,
  }) {
    return getSingleService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSingleService value)? getSingleService,
  }) {
    return getSingleService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSingleService value)? getSingleService,
    required TResult orElse(),
  }) {
    if (getSingleService != null) {
      return getSingleService(this);
    }
    return orElse();
  }
}

abstract class _GetSingleService implements ServiceSingleEvent {
  const factory _GetSingleService({required final String id}) =
      _$GetSingleServiceImpl;

  @override
  String get id;

  /// Create a copy of ServiceSingleEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSingleServiceImplCopyWith<_$GetSingleServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceSingleState {
  ServiceSingleEntity get serviceSingle => throw _privateConstructorUsedError;
  ActionStatus get actionStatus => throw _privateConstructorUsedError;

  /// Create a copy of ServiceSingleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceSingleStateCopyWith<ServiceSingleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceSingleStateCopyWith<$Res> {
  factory $ServiceSingleStateCopyWith(
          ServiceSingleState value, $Res Function(ServiceSingleState) then) =
      _$ServiceSingleStateCopyWithImpl<$Res, ServiceSingleState>;
  @useResult
  $Res call({ServiceSingleEntity serviceSingle, ActionStatus actionStatus});
}

/// @nodoc
class _$ServiceSingleStateCopyWithImpl<$Res, $Val extends ServiceSingleState>
    implements $ServiceSingleStateCopyWith<$Res> {
  _$ServiceSingleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceSingleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceSingle = null,
    Object? actionStatus = null,
  }) {
    return _then(_value.copyWith(
      serviceSingle: null == serviceSingle
          ? _value.serviceSingle
          : serviceSingle // ignore: cast_nullable_to_non_nullable
              as ServiceSingleEntity,
      actionStatus: null == actionStatus
          ? _value.actionStatus
          : actionStatus // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceSingleStateImplCopyWith<$Res>
    implements $ServiceSingleStateCopyWith<$Res> {
  factory _$$ServiceSingleStateImplCopyWith(_$ServiceSingleStateImpl value,
          $Res Function(_$ServiceSingleStateImpl) then) =
      __$$ServiceSingleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ServiceSingleEntity serviceSingle, ActionStatus actionStatus});
}

/// @nodoc
class __$$ServiceSingleStateImplCopyWithImpl<$Res>
    extends _$ServiceSingleStateCopyWithImpl<$Res, _$ServiceSingleStateImpl>
    implements _$$ServiceSingleStateImplCopyWith<$Res> {
  __$$ServiceSingleStateImplCopyWithImpl(_$ServiceSingleStateImpl _value,
      $Res Function(_$ServiceSingleStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceSingleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceSingle = null,
    Object? actionStatus = null,
  }) {
    return _then(_$ServiceSingleStateImpl(
      serviceSingle: null == serviceSingle
          ? _value.serviceSingle
          : serviceSingle // ignore: cast_nullable_to_non_nullable
              as ServiceSingleEntity,
      actionStatus: null == actionStatus
          ? _value.actionStatus
          : actionStatus // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
    ));
  }
}

/// @nodoc

class _$ServiceSingleStateImpl implements _ServiceSingleState {
  const _$ServiceSingleStateImpl(
      {this.serviceSingle = const ServiceSingleEntity(),
      this.actionStatus = ActionStatus.pure});

  @override
  @JsonKey()
  final ServiceSingleEntity serviceSingle;
  @override
  @JsonKey()
  final ActionStatus actionStatus;

  @override
  String toString() {
    return 'ServiceSingleState(serviceSingle: $serviceSingle, actionStatus: $actionStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceSingleStateImpl &&
            (identical(other.serviceSingle, serviceSingle) ||
                other.serviceSingle == serviceSingle) &&
            (identical(other.actionStatus, actionStatus) ||
                other.actionStatus == actionStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceSingle, actionStatus);

  /// Create a copy of ServiceSingleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceSingleStateImplCopyWith<_$ServiceSingleStateImpl> get copyWith =>
      __$$ServiceSingleStateImplCopyWithImpl<_$ServiceSingleStateImpl>(
          this, _$identity);
}

abstract class _ServiceSingleState implements ServiceSingleState {
  const factory _ServiceSingleState(
      {final ServiceSingleEntity serviceSingle,
      final ActionStatus actionStatus}) = _$ServiceSingleStateImpl;

  @override
  ServiceSingleEntity get serviceSingle;
  @override
  ActionStatus get actionStatus;

  /// Create a copy of ServiceSingleState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceSingleStateImplCopyWith<_$ServiceSingleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
