// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileServicesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getServices,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getServices,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getServices,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileServices value) getServices,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileServices value)? getServices,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileServices value)? getServices,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileServicesEventCopyWith<$Res> {
  factory $ProfileServicesEventCopyWith(
    ProfileServicesEvent value,
    $Res Function(ProfileServicesEvent) then,
  ) = _$ProfileServicesEventCopyWithImpl<$Res, ProfileServicesEvent>;
}

/// @nodoc
class _$ProfileServicesEventCopyWithImpl<
  $Res,
  $Val extends ProfileServicesEvent
>
    implements $ProfileServicesEventCopyWith<$Res> {
  _$ProfileServicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileServicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetProfileServicesImplCopyWith<$Res> {
  factory _$$GetProfileServicesImplCopyWith(
    _$GetProfileServicesImpl value,
    $Res Function(_$GetProfileServicesImpl) then,
  ) = __$$GetProfileServicesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileServicesImplCopyWithImpl<$Res>
    extends _$ProfileServicesEventCopyWithImpl<$Res, _$GetProfileServicesImpl>
    implements _$$GetProfileServicesImplCopyWith<$Res> {
  __$$GetProfileServicesImplCopyWithImpl(
    _$GetProfileServicesImpl _value,
    $Res Function(_$GetProfileServicesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileServicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProfileServicesImpl implements _GetProfileServices {
  const _$GetProfileServicesImpl();

  @override
  String toString() {
    return 'ProfileServicesEvent.getServices()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfileServicesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getServices,
  }) {
    return getServices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getServices,
  }) {
    return getServices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getServices,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileServices value) getServices,
  }) {
    return getServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileServices value)? getServices,
  }) {
    return getServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileServices value)? getServices,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(this);
    }
    return orElse();
  }
}

abstract class _GetProfileServices implements ProfileServicesEvent {
  const factory _GetProfileServices() = _$GetProfileServicesImpl;
}

/// @nodoc
mixin _$ProfileServicesState {
  List<ProfileServiceEntity> get services => throw _privateConstructorUsedError;
  ActionStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of ProfileServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileServicesStateCopyWith<ProfileServicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileServicesStateCopyWith<$Res> {
  factory $ProfileServicesStateCopyWith(
    ProfileServicesState value,
    $Res Function(ProfileServicesState) then,
  ) = _$ProfileServicesStateCopyWithImpl<$Res, ProfileServicesState>;
  @useResult
  $Res call({List<ProfileServiceEntity> services, ActionStatus status});
}

/// @nodoc
class _$ProfileServicesStateCopyWithImpl<
  $Res,
  $Val extends ProfileServicesState
>
    implements $ProfileServicesStateCopyWith<$Res> {
  _$ProfileServicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? services = null, Object? status = null}) {
    return _then(
      _value.copyWith(
            services: null == services
                ? _value.services
                : services // ignore: cast_nullable_to_non_nullable
                      as List<ProfileServiceEntity>,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ActionStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileServicesStateImplCopyWith<$Res>
    implements $ProfileServicesStateCopyWith<$Res> {
  factory _$$ProfileServicesStateImplCopyWith(
    _$ProfileServicesStateImpl value,
    $Res Function(_$ProfileServicesStateImpl) then,
  ) = __$$ProfileServicesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProfileServiceEntity> services, ActionStatus status});
}

/// @nodoc
class __$$ProfileServicesStateImplCopyWithImpl<$Res>
    extends _$ProfileServicesStateCopyWithImpl<$Res, _$ProfileServicesStateImpl>
    implements _$$ProfileServicesStateImplCopyWith<$Res> {
  __$$ProfileServicesStateImplCopyWithImpl(
    _$ProfileServicesStateImpl _value,
    $Res Function(_$ProfileServicesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? services = null, Object? status = null}) {
    return _then(
      _$ProfileServicesStateImpl(
        services: null == services
            ? _value._services
            : services // ignore: cast_nullable_to_non_nullable
                  as List<ProfileServiceEntity>,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ActionStatus,
      ),
    );
  }
}

/// @nodoc

class _$ProfileServicesStateImpl implements _ProfileServicesState {
  const _$ProfileServicesStateImpl({
    final List<ProfileServiceEntity> services = const [],
    this.status = ActionStatus.pure,
  }) : _services = services;

  final List<ProfileServiceEntity> _services;
  @override
  @JsonKey()
  List<ProfileServiceEntity> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  @JsonKey()
  final ActionStatus status;

  @override
  String toString() {
    return 'ProfileServicesState(services: $services, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileServicesStateImpl &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_services),
    status,
  );

  /// Create a copy of ProfileServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileServicesStateImplCopyWith<_$ProfileServicesStateImpl>
  get copyWith =>
      __$$ProfileServicesStateImplCopyWithImpl<_$ProfileServicesStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ProfileServicesState implements ProfileServicesState {
  const factory _ProfileServicesState({
    final List<ProfileServiceEntity> services,
    final ActionStatus status,
  }) = _$ProfileServicesStateImpl;

  @override
  List<ProfileServiceEntity> get services;
  @override
  ActionStatus get status;

  /// Create a copy of ProfileServicesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileServicesStateImplCopyWith<_$ProfileServicesStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
