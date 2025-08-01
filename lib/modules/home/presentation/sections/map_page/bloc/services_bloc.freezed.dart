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
    required TResult Function(LatLng? latLng, GoogleMapController mapController)
        setMyLocation,
    required TResult Function(int serviceId) showModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult? Function()? getServiceCategories,
    TResult? Function(LatLng? latLng, GoogleMapController mapController)?
        setMyLocation,
    TResult? Function(int serviceId)? showModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult Function()? getServiceCategories,
    TResult Function(LatLng? latLng, GoogleMapController mapController)?
        setMyLocation,
    TResult Function(int serviceId)? showModal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetServiceCategories value) getServiceCategories,
    required TResult Function(_SetMyLocation value) setMyLocation,
    required TResult Function(_ShowModal value) showModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceCategories value)? getServiceCategories,
    TResult? Function(_SetMyLocation value)? setMyLocation,
    TResult? Function(_ShowModal value)? showModal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceCategories value)? getServiceCategories,
    TResult Function(_SetMyLocation value)? setMyLocation,
    TResult Function(_ShowModal value)? showModal,
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
    required TResult Function(LatLng? latLng, GoogleMapController mapController)
        setMyLocation,
    required TResult Function(int serviceId) showModal,
  }) {
    return getServices(catId, region, serviceIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult? Function()? getServiceCategories,
    TResult? Function(LatLng? latLng, GoogleMapController mapController)?
        setMyLocation,
    TResult? Function(int serviceId)? showModal,
  }) {
    return getServices?.call(catId, region, serviceIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult Function()? getServiceCategories,
    TResult Function(LatLng? latLng, GoogleMapController mapController)?
        setMyLocation,
    TResult Function(int serviceId)? showModal,
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
    required TResult Function(_SetMyLocation value) setMyLocation,
    required TResult Function(_ShowModal value) showModal,
  }) {
    return getServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceCategories value)? getServiceCategories,
    TResult? Function(_SetMyLocation value)? setMyLocation,
    TResult? Function(_ShowModal value)? showModal,
  }) {
    return getServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceCategories value)? getServiceCategories,
    TResult Function(_SetMyLocation value)? setMyLocation,
    TResult Function(_ShowModal value)? showModal,
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
    required TResult Function(LatLng? latLng, GoogleMapController mapController)
        setMyLocation,
    required TResult Function(int serviceId) showModal,
  }) {
    return getServiceCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult? Function()? getServiceCategories,
    TResult? Function(LatLng? latLng, GoogleMapController mapController)?
        setMyLocation,
    TResult? Function(int serviceId)? showModal,
  }) {
    return getServiceCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult Function()? getServiceCategories,
    TResult Function(LatLng? latLng, GoogleMapController mapController)?
        setMyLocation,
    TResult Function(int serviceId)? showModal,
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
    required TResult Function(_SetMyLocation value) setMyLocation,
    required TResult Function(_ShowModal value) showModal,
  }) {
    return getServiceCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceCategories value)? getServiceCategories,
    TResult? Function(_SetMyLocation value)? setMyLocation,
    TResult? Function(_ShowModal value)? showModal,
  }) {
    return getServiceCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceCategories value)? getServiceCategories,
    TResult Function(_SetMyLocation value)? setMyLocation,
    TResult Function(_ShowModal value)? showModal,
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
abstract class _$$SetMyLocationImplCopyWith<$Res> {
  factory _$$SetMyLocationImplCopyWith(
          _$SetMyLocationImpl value, $Res Function(_$SetMyLocationImpl) then) =
      __$$SetMyLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng? latLng, GoogleMapController mapController});
}

/// @nodoc
class __$$SetMyLocationImplCopyWithImpl<$Res>
    extends _$ServicesEventCopyWithImpl<$Res, _$SetMyLocationImpl>
    implements _$$SetMyLocationImplCopyWith<$Res> {
  __$$SetMyLocationImplCopyWithImpl(
      _$SetMyLocationImpl _value, $Res Function(_$SetMyLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latLng = freezed,
    Object? mapController = null,
  }) {
    return _then(_$SetMyLocationImpl(
      freezed == latLng
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      null == mapController
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as GoogleMapController,
    ));
  }
}

/// @nodoc

class _$SetMyLocationImpl implements _SetMyLocation {
  const _$SetMyLocationImpl(this.latLng, this.mapController);

  @override
  final LatLng? latLng;
  @override
  final GoogleMapController mapController;

  @override
  String toString() {
    return 'ServicesEvent.setMyLocation(latLng: $latLng, mapController: $mapController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetMyLocationImpl &&
            (identical(other.latLng, latLng) || other.latLng == latLng) &&
            (identical(other.mapController, mapController) ||
                other.mapController == mapController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latLng, mapController);

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetMyLocationImplCopyWith<_$SetMyLocationImpl> get copyWith =>
      __$$SetMyLocationImplCopyWithImpl<_$SetMyLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int catId, RegionModel? region, Set<int> serviceIds)
        getServices,
    required TResult Function() getServiceCategories,
    required TResult Function(LatLng? latLng, GoogleMapController mapController)
        setMyLocation,
    required TResult Function(int serviceId) showModal,
  }) {
    return setMyLocation(latLng, mapController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult? Function()? getServiceCategories,
    TResult? Function(LatLng? latLng, GoogleMapController mapController)?
        setMyLocation,
    TResult? Function(int serviceId)? showModal,
  }) {
    return setMyLocation?.call(latLng, mapController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult Function()? getServiceCategories,
    TResult Function(LatLng? latLng, GoogleMapController mapController)?
        setMyLocation,
    TResult Function(int serviceId)? showModal,
    required TResult orElse(),
  }) {
    if (setMyLocation != null) {
      return setMyLocation(latLng, mapController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetServiceCategories value) getServiceCategories,
    required TResult Function(_SetMyLocation value) setMyLocation,
    required TResult Function(_ShowModal value) showModal,
  }) {
    return setMyLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceCategories value)? getServiceCategories,
    TResult? Function(_SetMyLocation value)? setMyLocation,
    TResult? Function(_ShowModal value)? showModal,
  }) {
    return setMyLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceCategories value)? getServiceCategories,
    TResult Function(_SetMyLocation value)? setMyLocation,
    TResult Function(_ShowModal value)? showModal,
    required TResult orElse(),
  }) {
    if (setMyLocation != null) {
      return setMyLocation(this);
    }
    return orElse();
  }
}

abstract class _SetMyLocation implements ServicesEvent {
  const factory _SetMyLocation(
          final LatLng? latLng, final GoogleMapController mapController) =
      _$SetMyLocationImpl;

  LatLng? get latLng;
  GoogleMapController get mapController;

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetMyLocationImplCopyWith<_$SetMyLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowModalImplCopyWith<$Res> {
  factory _$$ShowModalImplCopyWith(
          _$ShowModalImpl value, $Res Function(_$ShowModalImpl) then) =
      __$$ShowModalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int serviceId});
}

/// @nodoc
class __$$ShowModalImplCopyWithImpl<$Res>
    extends _$ServicesEventCopyWithImpl<$Res, _$ShowModalImpl>
    implements _$$ShowModalImplCopyWith<$Res> {
  __$$ShowModalImplCopyWithImpl(
      _$ShowModalImpl _value, $Res Function(_$ShowModalImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceId = null,
  }) {
    return _then(_$ShowModalImpl(
      null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShowModalImpl implements _ShowModal {
  const _$ShowModalImpl(this.serviceId);

  @override
  final int serviceId;

  @override
  String toString() {
    return 'ServicesEvent.showModal(serviceId: $serviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowModalImpl &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceId);

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowModalImplCopyWith<_$ShowModalImpl> get copyWith =>
      __$$ShowModalImplCopyWithImpl<_$ShowModalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int catId, RegionModel? region, Set<int> serviceIds)
        getServices,
    required TResult Function() getServiceCategories,
    required TResult Function(LatLng? latLng, GoogleMapController mapController)
        setMyLocation,
    required TResult Function(int serviceId) showModal,
  }) {
    return showModal(serviceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult? Function()? getServiceCategories,
    TResult? Function(LatLng? latLng, GoogleMapController mapController)?
        setMyLocation,
    TResult? Function(int serviceId)? showModal,
  }) {
    return showModal?.call(serviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int catId, RegionModel? region, Set<int> serviceIds)?
        getServices,
    TResult Function()? getServiceCategories,
    TResult Function(LatLng? latLng, GoogleMapController mapController)?
        setMyLocation,
    TResult Function(int serviceId)? showModal,
    required TResult orElse(),
  }) {
    if (showModal != null) {
      return showModal(serviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetServiceCategories value) getServiceCategories,
    required TResult Function(_SetMyLocation value) setMyLocation,
    required TResult Function(_ShowModal value) showModal,
  }) {
    return showModal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetServiceCategories value)? getServiceCategories,
    TResult? Function(_SetMyLocation value)? setMyLocation,
    TResult? Function(_ShowModal value)? showModal,
  }) {
    return showModal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetServiceCategories value)? getServiceCategories,
    TResult Function(_SetMyLocation value)? setMyLocation,
    TResult Function(_ShowModal value)? showModal,
    required TResult orElse(),
  }) {
    if (showModal != null) {
      return showModal(this);
    }
    return orElse();
  }
}

abstract class _ShowModal implements ServicesEvent {
  const factory _ShowModal(final int serviceId) = _$ShowModalImpl;

  int get serviceId;

  /// Create a copy of ServicesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowModalImplCopyWith<_$ShowModalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServicesState {
  List<ServiceCategory> get serviceCategories =>
      throw _privateConstructorUsedError;
  int get currentCatId => throw _privateConstructorUsedError;
  LatLng? get currentLocation => throw _privateConstructorUsedError;
  RegionModel? get currentRegion => throw _privateConstructorUsedError;
  Set<ServiceModel> get selectedServices =>
      throw _privateConstructorUsedError; //услуги
  List<ServiceModel> get allServices =>
      throw _privateConstructorUsedError; //весь список услуг
  Set<Marker> get markers => throw _privateConstructorUsedError;
  LatLngBounds? get visibleRegion => throw _privateConstructorUsedError;
  ActionStatus get status => throw _privateConstructorUsedError;
  bool get loadCarServices =>
      throw _privateConstructorUsedError; //отдельный прогресс на загрузку сервисов по критериям
  bool get showModal => throw _privateConstructorUsedError;
  int? get selectedServiceId => throw _privateConstructorUsedError;

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
      Set<ServiceModel> selectedServices,
      List<ServiceModel> allServices,
      Set<Marker> markers,
      LatLngBounds? visibleRegion,
      ActionStatus status,
      bool loadCarServices,
      bool showModal,
      int? selectedServiceId});
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
    Object? selectedServices = null,
    Object? allServices = null,
    Object? markers = null,
    Object? visibleRegion = freezed,
    Object? status = null,
    Object? loadCarServices = null,
    Object? showModal = null,
    Object? selectedServiceId = freezed,
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
      selectedServices: null == selectedServices
          ? _value.selectedServices
          : selectedServices // ignore: cast_nullable_to_non_nullable
              as Set<ServiceModel>,
      allServices: null == allServices
          ? _value.allServices
          : allServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      visibleRegion: freezed == visibleRegion
          ? _value.visibleRegion
          : visibleRegion // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      loadCarServices: null == loadCarServices
          ? _value.loadCarServices
          : loadCarServices // ignore: cast_nullable_to_non_nullable
              as bool,
      showModal: null == showModal
          ? _value.showModal
          : showModal // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedServiceId: freezed == selectedServiceId
          ? _value.selectedServiceId
          : selectedServiceId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      Set<ServiceModel> selectedServices,
      List<ServiceModel> allServices,
      Set<Marker> markers,
      LatLngBounds? visibleRegion,
      ActionStatus status,
      bool loadCarServices,
      bool showModal,
      int? selectedServiceId});
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
    Object? selectedServices = null,
    Object? allServices = null,
    Object? markers = null,
    Object? visibleRegion = freezed,
    Object? status = null,
    Object? loadCarServices = null,
    Object? showModal = null,
    Object? selectedServiceId = freezed,
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
      selectedServices: null == selectedServices
          ? _value._selectedServices
          : selectedServices // ignore: cast_nullable_to_non_nullable
              as Set<ServiceModel>,
      allServices: null == allServices
          ? _value._allServices
          : allServices // ignore: cast_nullable_to_non_nullable
              as List<ServiceModel>,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      visibleRegion: freezed == visibleRegion
          ? _value.visibleRegion
          : visibleRegion // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      loadCarServices: null == loadCarServices
          ? _value.loadCarServices
          : loadCarServices // ignore: cast_nullable_to_non_nullable
              as bool,
      showModal: null == showModal
          ? _value.showModal
          : showModal // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedServiceId: freezed == selectedServiceId
          ? _value.selectedServiceId
          : selectedServiceId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      final Set<ServiceModel> selectedServices = const {},
      final List<ServiceModel> allServices = const [],
      final Set<Marker> markers = const {},
      this.visibleRegion,
      this.status = ActionStatus.pure,
      this.loadCarServices = false,
      this.showModal = false,
      this.selectedServiceId})
      : _serviceCategories = serviceCategories,
        _selectedServices = selectedServices,
        _allServices = allServices,
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
  final Set<ServiceModel> _selectedServices;
  @override
  @JsonKey()
  Set<ServiceModel> get selectedServices {
    if (_selectedServices is EqualUnmodifiableSetView) return _selectedServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedServices);
  }

//услуги
  final List<ServiceModel> _allServices;
//услуги
  @override
  @JsonKey()
  List<ServiceModel> get allServices {
    if (_allServices is EqualUnmodifiableListView) return _allServices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allServices);
  }

//весь список услуг
  final Set<Marker> _markers;
//весь список услуг
  @override
  @JsonKey()
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  final LatLngBounds? visibleRegion;
  @override
  @JsonKey()
  final ActionStatus status;
  @override
  @JsonKey()
  final bool loadCarServices;
//отдельный прогресс на загрузку сервисов по критериям
  @override
  @JsonKey()
  final bool showModal;
  @override
  final int? selectedServiceId;

  @override
  String toString() {
    return 'ServicesState(serviceCategories: $serviceCategories, currentCatId: $currentCatId, currentLocation: $currentLocation, currentRegion: $currentRegion, selectedServices: $selectedServices, allServices: $allServices, markers: $markers, visibleRegion: $visibleRegion, status: $status, loadCarServices: $loadCarServices, showModal: $showModal, selectedServiceId: $selectedServiceId)';
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
            const DeepCollectionEquality()
                .equals(other._selectedServices, _selectedServices) &&
            const DeepCollectionEquality()
                .equals(other._allServices, _allServices) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.visibleRegion, visibleRegion) ||
                other.visibleRegion == visibleRegion) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loadCarServices, loadCarServices) ||
                other.loadCarServices == loadCarServices) &&
            (identical(other.showModal, showModal) ||
                other.showModal == showModal) &&
            (identical(other.selectedServiceId, selectedServiceId) ||
                other.selectedServiceId == selectedServiceId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_serviceCategories),
      currentCatId,
      currentLocation,
      currentRegion,
      const DeepCollectionEquality().hash(_selectedServices),
      const DeepCollectionEquality().hash(_allServices),
      const DeepCollectionEquality().hash(_markers),
      visibleRegion,
      status,
      loadCarServices,
      showModal,
      selectedServiceId);

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
      final Set<ServiceModel> selectedServices,
      final List<ServiceModel> allServices,
      final Set<Marker> markers,
      final LatLngBounds? visibleRegion,
      final ActionStatus status,
      final bool loadCarServices,
      final bool showModal,
      final int? selectedServiceId}) = _$ServicesStateImpl;

  @override
  List<ServiceCategory> get serviceCategories;
  @override
  int get currentCatId;
  @override
  LatLng? get currentLocation;
  @override
  RegionModel? get currentRegion;
  @override
  Set<ServiceModel> get selectedServices; //услуги
  @override
  List<ServiceModel> get allServices; //весь список услуг
  @override
  Set<Marker> get markers;
  @override
  LatLngBounds? get visibleRegion;
  @override
  ActionStatus get status;
  @override
  bool
      get loadCarServices; //отдельный прогресс на загрузку сервисов по критериям
  @override
  bool get showModal;
  @override
  int? get selectedServiceId;

  /// Create a copy of ServicesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicesStateImplCopyWith<_$ServicesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
