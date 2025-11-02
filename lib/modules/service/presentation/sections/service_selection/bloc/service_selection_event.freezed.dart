// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_selection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ServiceSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String serviceKey) toggleService,
    required TResult Function() clearSelection,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String serviceKey)? toggleService,
    TResult? Function()? clearSelection,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String serviceKey)? toggleService,
    TResult Function()? clearSelection,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleService value) toggleService,
    required TResult Function(_ClearSelection value) clearSelection,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleService value)? toggleService,
    TResult? Function(_ClearSelection value)? clearSelection,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleService value)? toggleService,
    TResult Function(_ClearSelection value)? clearSelection,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceSelectionEventCopyWith<$Res> {
  factory $ServiceSelectionEventCopyWith(
    ServiceSelectionEvent value,
    $Res Function(ServiceSelectionEvent) then,
  ) = _$ServiceSelectionEventCopyWithImpl<$Res, ServiceSelectionEvent>;
}

/// @nodoc
class _$ServiceSelectionEventCopyWithImpl<
  $Res,
  $Val extends ServiceSelectionEvent
>
    implements $ServiceSelectionEventCopyWith<$Res> {
  _$ServiceSelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ToggleServiceImplCopyWith<$Res> {
  factory _$$ToggleServiceImplCopyWith(
    _$ToggleServiceImpl value,
    $Res Function(_$ToggleServiceImpl) then,
  ) = __$$ToggleServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String serviceKey});
}

/// @nodoc
class __$$ToggleServiceImplCopyWithImpl<$Res>
    extends _$ServiceSelectionEventCopyWithImpl<$Res, _$ToggleServiceImpl>
    implements _$$ToggleServiceImplCopyWith<$Res> {
  __$$ToggleServiceImplCopyWithImpl(
    _$ToggleServiceImpl _value,
    $Res Function(_$ToggleServiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServiceSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? serviceKey = null}) {
    return _then(
      _$ToggleServiceImpl(
        null == serviceKey
            ? _value.serviceKey
            : serviceKey // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ToggleServiceImpl implements _ToggleService {
  const _$ToggleServiceImpl(this.serviceKey);

  @override
  final String serviceKey;

  @override
  String toString() {
    return 'ServiceSelectionEvent.toggleService(serviceKey: $serviceKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleServiceImpl &&
            (identical(other.serviceKey, serviceKey) ||
                other.serviceKey == serviceKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceKey);

  /// Create a copy of ServiceSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleServiceImplCopyWith<_$ToggleServiceImpl> get copyWith =>
      __$$ToggleServiceImplCopyWithImpl<_$ToggleServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String serviceKey) toggleService,
    required TResult Function() clearSelection,
  }) {
    return toggleService(serviceKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String serviceKey)? toggleService,
    TResult? Function()? clearSelection,
  }) {
    return toggleService?.call(serviceKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String serviceKey)? toggleService,
    TResult Function()? clearSelection,
    required TResult orElse(),
  }) {
    if (toggleService != null) {
      return toggleService(serviceKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleService value) toggleService,
    required TResult Function(_ClearSelection value) clearSelection,
  }) {
    return toggleService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleService value)? toggleService,
    TResult? Function(_ClearSelection value)? clearSelection,
  }) {
    return toggleService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleService value)? toggleService,
    TResult Function(_ClearSelection value)? clearSelection,
    required TResult orElse(),
  }) {
    if (toggleService != null) {
      return toggleService(this);
    }
    return orElse();
  }
}

abstract class _ToggleService implements ServiceSelectionEvent {
  const factory _ToggleService(final String serviceKey) = _$ToggleServiceImpl;

  String get serviceKey;

  /// Create a copy of ServiceSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleServiceImplCopyWith<_$ToggleServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSelectionImplCopyWith<$Res> {
  factory _$$ClearSelectionImplCopyWith(
    _$ClearSelectionImpl value,
    $Res Function(_$ClearSelectionImpl) then,
  ) = __$$ClearSelectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSelectionImplCopyWithImpl<$Res>
    extends _$ServiceSelectionEventCopyWithImpl<$Res, _$ClearSelectionImpl>
    implements _$$ClearSelectionImplCopyWith<$Res> {
  __$$ClearSelectionImplCopyWithImpl(
    _$ClearSelectionImpl _value,
    $Res Function(_$ClearSelectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServiceSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSelectionImpl implements _ClearSelection {
  const _$ClearSelectionImpl();

  @override
  String toString() {
    return 'ServiceSelectionEvent.clearSelection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearSelectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String serviceKey) toggleService,
    required TResult Function() clearSelection,
  }) {
    return clearSelection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String serviceKey)? toggleService,
    TResult? Function()? clearSelection,
  }) {
    return clearSelection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String serviceKey)? toggleService,
    TResult Function()? clearSelection,
    required TResult orElse(),
  }) {
    if (clearSelection != null) {
      return clearSelection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToggleService value) toggleService,
    required TResult Function(_ClearSelection value) clearSelection,
  }) {
    return clearSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToggleService value)? toggleService,
    TResult? Function(_ClearSelection value)? clearSelection,
  }) {
    return clearSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToggleService value)? toggleService,
    TResult Function(_ClearSelection value)? clearSelection,
    required TResult orElse(),
  }) {
    if (clearSelection != null) {
      return clearSelection(this);
    }
    return orElse();
  }
}

abstract class _ClearSelection implements ServiceSelectionEvent {
  const factory _ClearSelection() = _$ClearSelectionImpl;
}
