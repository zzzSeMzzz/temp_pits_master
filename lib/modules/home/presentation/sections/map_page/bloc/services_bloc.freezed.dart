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
    required TResult Function(
            int catId, RegionModel? region, Set<int> serviceIds)
        getServices,
    required TResult Function() getServiceCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult? Function()? getServiceCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
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
  @useResult
  $Res call({int catId, RegionModel? region, Set<int> serviceIds});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = null,
    Object? region = freezed,
    Object? serviceIds = null,
  }) {
    return _then(_$GetServicesImpl(
      catId: null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as int,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as RegionModel?,
      serviceIds: null == serviceIds
          ? _value._serviceIds
          : serviceIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc

class _$GetServicesImpl implements _GetServices {
  const _$GetServicesImpl(
      {this.catId = 0, this.region, final Set<int> serviceIds = const {}})
      : _serviceIds = serviceIds;

  @override
  @JsonKey()
  final int catId;
  @override
  final RegionModel? region;
  final Set<int> _serviceIds;
  @override
  @JsonKey()
  Set<int> get serviceIds {
    if (_serviceIds is EqualUnmodifiableSetView) return _serviceIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_serviceIds);
  }

  @override
  String toString() {
    return 'ServicesEvent.getServices(catId: $catId, region: $region, serviceIds: $serviceIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServicesImpl &&
            (identical(other.catId, catId) || other.catId == catId) &&
            (identical(other.region, region) || other.region == region) &&
            const DeepCollectionEquality()
                .equals(other._serviceIds, _serviceIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catId, region,
      const DeepCollectionEquality().hash(_serviceIds));

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetServicesImplCopyWith<_$GetServicesImpl> get copyWith =>
      __$$GetServicesImplCopyWithImpl<_$GetServicesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int catId, RegionModel? region, Set<int> serviceIds)
        getServices,
    required TResult Function() getServiceCategories,
  }) {
    return getServices(catId, region, serviceIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult? Function()? getServiceCategories,
  }) {
    return getServices?.call(catId, region, serviceIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult Function()? getServiceCategories,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(catId, region, serviceIds);
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
  const factory _GetServices(
      {final int catId,
      final RegionModel? region,
      final Set<int> serviceIds}) = _$GetServicesImpl;

  int get catId;
  RegionModel? get region;
  Set<int> get serviceIds;

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetServicesImplCopyWith<_$GetServicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(
            int catId, RegionModel? region, Set<int> serviceIds)
        getServices,
    required TResult Function() getServiceCategories,
  }) {
    return getServiceCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult? Function()? getServiceCategories,
  }) {
    return getServiceCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
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
  int get currentCatId => throw _privateConstructorUsedError;
  LatLng? get currentLocation => throw _privateConstructorUsedError;
  RegionModel? get currentRegion => throw _privateConstructorUsedError;
  List<CarServiceEntity> get services => throw _privateConstructorUsedError;
  Set<Marker> get markers => throw _privateConstructorUsedError;
  ActionStatus get status => throw _privateConstructorUsedError;
  bool get loadCarServices => throw _privateConstructorUsedError;

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
      int currentCatId,
      LatLng? currentLocation,
      RegionModel? currentRegion,
      List<CarServiceEntity> services,
      Set<Marker> markers,
      ActionStatus status,
      bool loadCarServices});
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
    Object? currentCatId = null,
    Object? currentLocation = freezed,
    Object? currentRegion = freezed,
    Object? services = null,
    Object? markers = null,
    Object? status = null,
    Object? loadCarServices = null,
  }) {
    return _then(_value.copyWith(
      serviceCategories: null == serviceCategories
          ? _value.serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>,
      currentCatId: null == currentCatId
          ? _value.currentCatId
          : currentCatId // ignore: cast_nullable_to_non_nullable
              as int,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      currentRegion: freezed == currentRegion
          ? _value.currentRegion
          : currentRegion // ignore: cast_nullable_to_non_nullable
              as RegionModel?,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<CarServiceEntity>,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      loadCarServices: null == loadCarServices
          ? _value.loadCarServices
          : loadCarServices // ignore: cast_nullable_to_non_nullable
              as bool,
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
      int currentCatId,
      LatLng? currentLocation,
      RegionModel? currentRegion,
      List<CarServiceEntity> services,
      Set<Marker> markers,
      ActionStatus status,
      bool loadCarServices});
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
    Object? currentCatId = null,
    Object? currentLocation = freezed,
    Object? currentRegion = freezed,
    Object? services = null,
    Object? markers = null,
    Object? status = null,
    Object? loadCarServices = null,
  }) {
    return _then(_$ServicesStateImpl(
      serviceCategories: null == serviceCategories
          ? _value._serviceCategories
          : serviceCategories // ignore: cast_nullable_to_non_nullable
              as List<ServiceCategory>,
      currentCatId: null == currentCatId
          ? _value.currentCatId
          : currentCatId // ignore: cast_nullable_to_non_nullable
              as int,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      currentRegion: freezed == currentRegion
          ? _value.currentRegion
          : currentRegion // ignore: cast_nullable_to_non_nullable
              as RegionModel?,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<CarServiceEntity>,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      loadCarServices: null == loadCarServices
          ? _value.loadCarServices
          : loadCarServices // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServicesStateImpl implements _ServicesState {
  const _$ServicesStateImpl(
      {final List<ServiceCategory> serviceCategories = const [],
      this.currentCatId = 133,
      this.currentLocation,
      this.currentRegion,
      final List<CarServiceEntity> services = const [],
      final Set<Marker> markers = const {},
      this.status = ActionStatus.pure,
      this.loadCarServices = false})
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

  @override
  @JsonKey()
  final int currentCatId;
  @override
  final LatLng? currentLocation;
  @override
  final RegionModel? currentRegion;
  final List<CarServiceEntity> _services;
  @override
  @JsonKey()
  List<CarServiceEntity> get services {
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
  @JsonKey()
  final bool loadCarServices;

  @override
  String toString() {
    return 'ServicesState(serviceCategories: $serviceCategories, currentCatId: $currentCatId, currentLocation: $currentLocation, currentRegion: $currentRegion, services: $services, markers: $markers, status: $status, loadCarServices: $loadCarServices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._serviceCategories, _serviceCategories) &&
            (identical(other.currentCatId, currentCatId) ||
                other.currentCatId == currentCatId) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation) &&
            (identical(other.currentRegion, currentRegion) ||
                other.currentRegion == currentRegion) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loadCarServices, loadCarServices) ||
                other.loadCarServices == loadCarServices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_serviceCategories),
      currentCatId,
      currentLocation,
      currentRegion,
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_markers),
      status,
      loadCarServices);

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
      final int currentCatId,
      final LatLng? currentLocation,
      final RegionModel? currentRegion,
      final List<CarServiceEntity> services,
      final Set<Marker> markers,
      final ActionStatus status,
      final bool loadCarServices}) = _$ServicesStateImpl;

  @override
  List<ServiceCategory> get serviceCategories;
  @override
  int get currentCatId;
  @override
  LatLng? get currentLocation;
  @override
  RegionModel? get currentRegion;
  @override
  List<CarServiceEntity> get services;
  @override
  Set<Marker> get markers;
  @override
  ActionStatus get status;
  @override
  bool get loadCarServices;

  /// Create a copy of ServicesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicesStateImplCopyWith<_$ServicesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
