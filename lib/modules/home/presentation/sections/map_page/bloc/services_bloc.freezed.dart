// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServicesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getServices,
    required TResult Function() getServiceCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getServices,
    TResult? Function()? getServiceCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getServices,
    TResult Function()? getServiceCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetServiceCategories value) getServiceCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceCategories value)? getServiceCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceCategories value)? getServiceCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesEventCopyWith<$Res> {
  factory $ServicesEventCopyWith(
          ServicesEvent value, $Res Function(ServicesEvent) then) =
      _$ServicesEventCopyWithImpl<$Res, ServicesEvent>;
}

/// @nodoc
class _$ServicesEventCopyWithImpl<$Res, $Val extends ServicesEvent>
    implements $ServicesEventCopyWith<$Res> {
  _$ServicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetServicesImplCopyWith<$Res> {
  factory _$$GetServicesImplCopyWith(
          _$GetServicesImpl value, $Res Function(_$GetServicesImpl) then) =
      __$$GetServicesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetServicesImplCopyWithImpl<$Res>
    extends _$ServicesEventCopyWithImpl<$Res, _$GetServicesImpl>
    implements _$$GetServicesImplCopyWith<$Res> {
  __$$GetServicesImplCopyWithImpl(
      _$GetServicesImpl _value, $Res Function(_$GetServicesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetServicesImpl implements _GetServices {
  const _$GetServicesImpl();

  @override
  String toString() {
    return 'ServicesEvent.getServices()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetServicesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getServices,
    required TResult Function() getServiceCategories,
  }) {
    return getServices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getServices,
    TResult? Function()? getServiceCategories,
  }) {
    return getServices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getServices,
    TResult Function()? getServiceCategories,
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
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetServiceCategories value) getServiceCategories,
  }) {
    return getServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceCategories value)? getServiceCategories,
  }) {
    return getServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceCategories value)? getServiceCategories,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(this);
    }
    return orElse();
  }
}

abstract class _GetServices implements ServicesEvent {
  const factory _GetServices() = _$GetServicesImpl;
}

/// @nodoc
abstract class _$$GetServiceCategoriesImplCopyWith<$Res> {
  factory _$$GetServiceCategoriesImplCopyWith(_$GetServiceCategoriesImpl value,
          $Res Function(_$GetServiceCategoriesImpl) then) =
      __$$GetServiceCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetServiceCategoriesImplCopyWithImpl<$Res>
    extends _$ServicesEventCopyWithImpl<$Res, _$GetServiceCategoriesImpl>
    implements _$$GetServiceCategoriesImplCopyWith<$Res> {
  __$$GetServiceCategoriesImplCopyWithImpl(_$GetServiceCategoriesImpl _value,
      $Res Function(_$GetServiceCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetServiceCategoriesImpl implements _GetServiceCategories {
  const _$GetServiceCategoriesImpl();

  @override
  String toString() {
    return 'ServicesEvent.getServiceCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServiceCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getServices,
    required TResult Function() getServiceCategories,
  }) {
    return getServiceCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getServices,
    TResult? Function()? getServiceCategories,
  }) {
    return getServiceCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getServices,
    TResult Function()? getServiceCategories,
    required TResult orElse(),
  }) {
    if (getServiceCategories != null) {
      return getServiceCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetServiceCategories value) getServiceCategories,
  }) {
    return getServiceCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceCategories value)? getServiceCategories,
  }) {
    return getServiceCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceCategories value)? getServiceCategories,
    required TResult orElse(),
  }) {
    if (getServiceCategories != null) {
      return getServiceCategories(this);
    }
    return orElse();
  }
}

abstract class _GetServiceCategories implements ServicesEvent {
  const factory _GetServiceCategories() = _$GetServiceCategoriesImpl;
}

/// @nodoc
mixin _$ServicesState {
  List<ServiceCategory> get serviceCategories =>
      throw _privateConstructorUsedError;
  List<ServiceEntity> get services => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  ActionStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of ServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServicesStateCopyWith<ServicesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesStateCopyWith<$Res> {
  factory $ServicesStateCopyWith(
          ServicesState value, $Res Function(ServicesState) then) =
      _$ServicesStateCopyWithImpl<$Res, ServicesState>;
  @useResult
  $Res call(
      {List<ServiceCategory> serviceCategories,
      List<ServiceEntity> services,
      Set<Marker> markers,
      ActionStatus status});
}

/// @nodoc
class _$ServicesStateCopyWithImpl<$Res, $Val extends ServicesState>
    implements $ServicesStateCopyWith<$Res> {
  _$ServicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceCategories = null,
    Object? services = null,
    Object? markers = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      serviceCategories: null == serviceCategories
          ? _value.serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceEntity>,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicesStateImplCopyWith<$Res>
    implements $ServicesStateCopyWith<$Res> {
  factory _$$ServicesStateImplCopyWith(
          _$ServicesStateImpl value, $Res Function(_$ServicesStateImpl) then) =
      __$$ServicesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ServiceCategory> serviceCategories,
      List<ServiceEntity> services,
      Set<Marker> markers,
      ActionStatus status});
}

/// @nodoc
class __$$ServicesStateImplCopyWithImpl<$Res>
    extends _$ServicesStateCopyWithImpl<$Res, _$ServicesStateImpl>
    implements _$$ServicesStateImplCopyWith<$Res> {
  __$$ServicesStateImplCopyWithImpl(
      _$ServicesStateImpl _value, $Res Function(_$ServicesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceCategories = null,
    Object? services = null,
    Object? markers = null,
    Object? status = null,
  }) {
    return _then(_$ServicesStateImpl(
      serviceCategories: null == serviceCategories
          ? _value._serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ServiceEntity>,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
    ));
  }
}

/// @nodoc

class _$ServicesStateImpl implements _ServicesState {
  const _$ServicesStateImpl(
      {final List<ServiceCategory> serviceCategories = const [],
      final List<ServiceEntity> services = const [],
      final Set<Marker> markers = const {},
      this.status = ActionStatus.pure})
      : _serviceCategories = serviceCategories,
        _services = services,
        _markers = markers;

  final List<ServiceCategory> _serviceCategories;
  @override
  @JsonKey()
  List<ServiceCategory> get serviceCategories {
    if (_serviceCategories is EqualUnmodifiableListView)
      return _serviceCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_serviceCategories);
  }

  final List<ServiceEntity> _services;
  @override
  @JsonKey()
  List<ServiceEntity> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final Set<Marker> _markers;
  @override
  @JsonKey()
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  @JsonKey()
  final ActionStatus status;

  @override
  String toString() {
    return 'ServicesState(serviceCategories: $serviceCategories, services: $services, markers: $markers, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._serviceCategories, _serviceCategories) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_serviceCategories),
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_markers),
      status);

  /// Create a copy of ServicesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesStateImplCopyWith<_$ServicesStateImpl> get copyWith =>
      __$$ServicesStateImplCopyWithImpl<_$ServicesStateImpl>(this, _$identity);
}

abstract class _ServicesState implements ServicesState {
  const factory _ServicesState(
      {final List<ServiceCategory> serviceCategories,
      final List<ServiceEntity> services,
      final Set<Marker> markers,
      final ActionStatus status}) = _$ServicesStateImpl;

  @override
  List<ServiceCategory> get serviceCategories;
  @override
  List<ServiceEntity> get services;
  @override
  Set<Marker> get markers;
  @override
  ActionStatus get status;

  /// Create a copy of ServicesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicesStateImplCopyWith<_$ServicesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
