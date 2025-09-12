// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_car_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddCarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) photoPickerRequested,
    required TResult Function(PickerType pickerType) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(PickerType pickerType)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(PickerType pickerType)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoPickerRequested value) photoPickerRequested,
    required TResult Function(_OnPhotoSelected value) onPhotoSelected,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
    required TResult Function(_Cleared value) cleared,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult? Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
    TResult? Function(_Cleared value)? cleared,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCarEventCopyWith<$Res> {
  factory $AddCarEventCopyWith(
    AddCarEvent value,
    $Res Function(AddCarEvent) then,
  ) = _$AddCarEventCopyWithImpl<$Res, AddCarEvent>;
}

/// @nodoc
class _$AddCarEventCopyWithImpl<$Res, $Val extends AddCarEvent>
    implements $AddCarEventCopyWith<$Res> {
  _$AddCarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PhotoPickerRequestedImplCopyWith<$Res> {
  factory _$$PhotoPickerRequestedImplCopyWith(
    _$PhotoPickerRequestedImpl value,
    $Res Function(_$PhotoPickerRequestedImpl) then,
  ) = __$$PhotoPickerRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ImageSource source});
}

/// @nodoc
class __$$PhotoPickerRequestedImplCopyWithImpl<$Res>
    extends _$AddCarEventCopyWithImpl<$Res, _$PhotoPickerRequestedImpl>
    implements _$$PhotoPickerRequestedImplCopyWith<$Res> {
  __$$PhotoPickerRequestedImplCopyWithImpl(
    _$PhotoPickerRequestedImpl _value,
    $Res Function(_$PhotoPickerRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? source = null}) {
    return _then(
      _$PhotoPickerRequestedImpl(
        null == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as ImageSource,
      ),
    );
  }
}

/// @nodoc

class _$PhotoPickerRequestedImpl implements _PhotoPickerRequested {
  const _$PhotoPickerRequestedImpl(this.source);

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'AddCarEvent.photoPickerRequested(source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoPickerRequestedImpl &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  /// Create a copy of AddCarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoPickerRequestedImplCopyWith<_$PhotoPickerRequestedImpl>
  get copyWith =>
      __$$PhotoPickerRequestedImplCopyWithImpl<_$PhotoPickerRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) photoPickerRequested,
    required TResult Function(PickerType pickerType) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
  }) {
    return photoPickerRequested(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(PickerType pickerType)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
  }) {
    return photoPickerRequested?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(PickerType pickerType)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (photoPickerRequested != null) {
      return photoPickerRequested(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoPickerRequested value) photoPickerRequested,
    required TResult Function(_OnPhotoSelected value) onPhotoSelected,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
    required TResult Function(_Cleared value) cleared,
  }) {
    return photoPickerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult? Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return photoPickerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (photoPickerRequested != null) {
      return photoPickerRequested(this);
    }
    return orElse();
  }
}

abstract class _PhotoPickerRequested implements AddCarEvent {
  const factory _PhotoPickerRequested(final ImageSource source) =
      _$PhotoPickerRequestedImpl;

  ImageSource get source;

  /// Create a copy of AddCarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoPickerRequestedImplCopyWith<_$PhotoPickerRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPhotoSelectedImplCopyWith<$Res> {
  factory _$$OnPhotoSelectedImplCopyWith(
    _$OnPhotoSelectedImpl value,
    $Res Function(_$OnPhotoSelectedImpl) then,
  ) = __$$OnPhotoSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PickerType pickerType});
}

/// @nodoc
class __$$OnPhotoSelectedImplCopyWithImpl<$Res>
    extends _$AddCarEventCopyWithImpl<$Res, _$OnPhotoSelectedImpl>
    implements _$$OnPhotoSelectedImplCopyWith<$Res> {
  __$$OnPhotoSelectedImplCopyWithImpl(
    _$OnPhotoSelectedImpl _value,
    $Res Function(_$OnPhotoSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pickerType = null}) {
    return _then(
      _$OnPhotoSelectedImpl(
        null == pickerType
            ? _value.pickerType
            : pickerType // ignore: cast_nullable_to_non_nullable
                  as PickerType,
      ),
    );
  }
}

/// @nodoc

class _$OnPhotoSelectedImpl implements _OnPhotoSelected {
  const _$OnPhotoSelectedImpl(this.pickerType);

  @override
  final PickerType pickerType;

  @override
  String toString() {
    return 'AddCarEvent.onPhotoSelected(pickerType: $pickerType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPhotoSelectedImpl &&
            (identical(other.pickerType, pickerType) ||
                other.pickerType == pickerType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickerType);

  /// Create a copy of AddCarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPhotoSelectedImplCopyWith<_$OnPhotoSelectedImpl> get copyWith =>
      __$$OnPhotoSelectedImplCopyWithImpl<_$OnPhotoSelectedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) photoPickerRequested,
    required TResult Function(PickerType pickerType) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
  }) {
    return onPhotoSelected(pickerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(PickerType pickerType)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
  }) {
    return onPhotoSelected?.call(pickerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(PickerType pickerType)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (onPhotoSelected != null) {
      return onPhotoSelected(pickerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoPickerRequested value) photoPickerRequested,
    required TResult Function(_OnPhotoSelected value) onPhotoSelected,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
    required TResult Function(_Cleared value) cleared,
  }) {
    return onPhotoSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult? Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return onPhotoSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (onPhotoSelected != null) {
      return onPhotoSelected(this);
    }
    return orElse();
  }
}

abstract class _OnPhotoSelected implements AddCarEvent {
  const factory _OnPhotoSelected(final PickerType pickerType) =
      _$OnPhotoSelectedImpl;

  PickerType get pickerType;

  /// Create a copy of AddCarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnPhotoSelectedImplCopyWith<_$OnPhotoSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionsRequestedImplCopyWith<$Res> {
  factory _$$PermissionsRequestedImplCopyWith(
    _$PermissionsRequestedImpl value,
    $Res Function(_$PermissionsRequestedImpl) then,
  ) = __$$PermissionsRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionsRequestedImplCopyWithImpl<$Res>
    extends _$AddCarEventCopyWithImpl<$Res, _$PermissionsRequestedImpl>
    implements _$$PermissionsRequestedImplCopyWith<$Res> {
  __$$PermissionsRequestedImplCopyWithImpl(
    _$PermissionsRequestedImpl _value,
    $Res Function(_$PermissionsRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionsRequestedImpl implements _PermissionsRequested {
  const _$PermissionsRequestedImpl();

  @override
  String toString() {
    return 'AddCarEvent.permissionsRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) photoPickerRequested,
    required TResult Function(PickerType pickerType) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
  }) {
    return permissionsRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(PickerType pickerType)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
  }) {
    return permissionsRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(PickerType pickerType)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (permissionsRequested != null) {
      return permissionsRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoPickerRequested value) photoPickerRequested,
    required TResult Function(_OnPhotoSelected value) onPhotoSelected,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
    required TResult Function(_Cleared value) cleared,
  }) {
    return permissionsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult? Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return permissionsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (permissionsRequested != null) {
      return permissionsRequested(this);
    }
    return orElse();
  }
}

abstract class _PermissionsRequested implements AddCarEvent {
  const factory _PermissionsRequested() = _$PermissionsRequestedImpl;
}

/// @nodoc
abstract class _$$ClearedImplCopyWith<$Res> {
  factory _$$ClearedImplCopyWith(
    _$ClearedImpl value,
    $Res Function(_$ClearedImpl) then,
  ) = __$$ClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearedImplCopyWithImpl<$Res>
    extends _$AddCarEventCopyWithImpl<$Res, _$ClearedImpl>
    implements _$$ClearedImplCopyWith<$Res> {
  __$$ClearedImplCopyWithImpl(
    _$ClearedImpl _value,
    $Res Function(_$ClearedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddCarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearedImpl implements _Cleared {
  const _$ClearedImpl();

  @override
  String toString() {
    return 'AddCarEvent.cleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) photoPickerRequested,
    required TResult Function(PickerType pickerType) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
  }) {
    return cleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(PickerType pickerType)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
  }) {
    return cleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(PickerType pickerType)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoPickerRequested value) photoPickerRequested,
    required TResult Function(_OnPhotoSelected value) onPhotoSelected,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
    required TResult Function(_Cleared value) cleared,
  }) {
    return cleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult? Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return cleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared(this);
    }
    return orElse();
  }
}

abstract class _Cleared implements AddCarEvent {
  const factory _Cleared() = _$ClearedImpl;
}
