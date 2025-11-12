// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repair_selection_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RepairSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) photoPickerRequested,
    required TResult Function(ImageSource source) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
    required TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )
    sendRepairRequest,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(ImageSource source)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
    TResult? Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(ImageSource source)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoPickerRequested value) photoPickerRequested,
    required TResult Function(_OnPhotoSelected value) onPhotoSelected,
    required TResult Function(_PermissionsRequested value) permissionsRequested,
    required TResult Function(_Cleared value) cleared,
    required TResult Function(_SendRepairRequest value) sendRepairRequest,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult? Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
    TResult? Function(_Cleared value)? cleared,
    TResult? Function(_SendRepairRequest value)? sendRepairRequest,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_SendRepairRequest value)? sendRepairRequest,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairSelectionEventCopyWith<$Res> {
  factory $RepairSelectionEventCopyWith(
    RepairSelectionEvent value,
    $Res Function(RepairSelectionEvent) then,
  ) = _$RepairSelectionEventCopyWithImpl<$Res, RepairSelectionEvent>;
}

/// @nodoc
class _$RepairSelectionEventCopyWithImpl<
  $Res,
  $Val extends RepairSelectionEvent
>
    implements $RepairSelectionEventCopyWith<$Res> {
  _$RepairSelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepairSelectionEvent
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
    extends _$RepairSelectionEventCopyWithImpl<$Res, _$PhotoPickerRequestedImpl>
    implements _$$PhotoPickerRequestedImplCopyWith<$Res> {
  __$$PhotoPickerRequestedImplCopyWithImpl(
    _$PhotoPickerRequestedImpl _value,
    $Res Function(_$PhotoPickerRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepairSelectionEvent
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
    return 'RepairSelectionEvent.photoPickerRequested(source: $source)';
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

  /// Create a copy of RepairSelectionEvent
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
    required TResult Function(ImageSource source) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
    required TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )
    sendRepairRequest,
  }) {
    return photoPickerRequested(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(ImageSource source)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
    TResult? Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
  }) {
    return photoPickerRequested?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(ImageSource source)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
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
    required TResult Function(_SendRepairRequest value) sendRepairRequest,
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
    TResult? Function(_SendRepairRequest value)? sendRepairRequest,
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
    TResult Function(_SendRepairRequest value)? sendRepairRequest,
    required TResult orElse(),
  }) {
    if (photoPickerRequested != null) {
      return photoPickerRequested(this);
    }
    return orElse();
  }
}

abstract class _PhotoPickerRequested implements RepairSelectionEvent {
  const factory _PhotoPickerRequested(final ImageSource source) =
      _$PhotoPickerRequestedImpl;

  ImageSource get source;

  /// Create a copy of RepairSelectionEvent
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
  $Res call({ImageSource source});
}

/// @nodoc
class __$$OnPhotoSelectedImplCopyWithImpl<$Res>
    extends _$RepairSelectionEventCopyWithImpl<$Res, _$OnPhotoSelectedImpl>
    implements _$$OnPhotoSelectedImplCopyWith<$Res> {
  __$$OnPhotoSelectedImplCopyWithImpl(
    _$OnPhotoSelectedImpl _value,
    $Res Function(_$OnPhotoSelectedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepairSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? source = null}) {
    return _then(
      _$OnPhotoSelectedImpl(
        null == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as ImageSource,
      ),
    );
  }
}

/// @nodoc

class _$OnPhotoSelectedImpl implements _OnPhotoSelected {
  const _$OnPhotoSelectedImpl(this.source);

  @override
  final ImageSource source;

  @override
  String toString() {
    return 'RepairSelectionEvent.onPhotoSelected(source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPhotoSelectedImpl &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  /// Create a copy of RepairSelectionEvent
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
    required TResult Function(ImageSource source) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
    required TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )
    sendRepairRequest,
  }) {
    return onPhotoSelected(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(ImageSource source)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
    TResult? Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
  }) {
    return onPhotoSelected?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(ImageSource source)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
    required TResult orElse(),
  }) {
    if (onPhotoSelected != null) {
      return onPhotoSelected(source);
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
    required TResult Function(_SendRepairRequest value) sendRepairRequest,
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
    TResult? Function(_SendRepairRequest value)? sendRepairRequest,
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
    TResult Function(_SendRepairRequest value)? sendRepairRequest,
    required TResult orElse(),
  }) {
    if (onPhotoSelected != null) {
      return onPhotoSelected(this);
    }
    return orElse();
  }
}

abstract class _OnPhotoSelected implements RepairSelectionEvent {
  const factory _OnPhotoSelected(final ImageSource source) =
      _$OnPhotoSelectedImpl;

  ImageSource get source;

  /// Create a copy of RepairSelectionEvent
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
    extends _$RepairSelectionEventCopyWithImpl<$Res, _$PermissionsRequestedImpl>
    implements _$$PermissionsRequestedImplCopyWith<$Res> {
  __$$PermissionsRequestedImplCopyWithImpl(
    _$PermissionsRequestedImpl _value,
    $Res Function(_$PermissionsRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepairSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PermissionsRequestedImpl implements _PermissionsRequested {
  const _$PermissionsRequestedImpl();

  @override
  String toString() {
    return 'RepairSelectionEvent.permissionsRequested()';
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
    required TResult Function(ImageSource source) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
    required TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )
    sendRepairRequest,
  }) {
    return permissionsRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(ImageSource source)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
    TResult? Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
  }) {
    return permissionsRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(ImageSource source)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
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
    required TResult Function(_SendRepairRequest value) sendRepairRequest,
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
    TResult? Function(_SendRepairRequest value)? sendRepairRequest,
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
    TResult Function(_SendRepairRequest value)? sendRepairRequest,
    required TResult orElse(),
  }) {
    if (permissionsRequested != null) {
      return permissionsRequested(this);
    }
    return orElse();
  }
}

abstract class _PermissionsRequested implements RepairSelectionEvent {
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
    extends _$RepairSelectionEventCopyWithImpl<$Res, _$ClearedImpl>
    implements _$$ClearedImplCopyWith<$Res> {
  __$$ClearedImplCopyWithImpl(
    _$ClearedImpl _value,
    $Res Function(_$ClearedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepairSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearedImpl implements _Cleared {
  const _$ClearedImpl();

  @override
  String toString() {
    return 'RepairSelectionEvent.cleared()';
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
    required TResult Function(ImageSource source) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
    required TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )
    sendRepairRequest,
  }) {
    return cleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(ImageSource source)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
    TResult? Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
  }) {
    return cleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(ImageSource source)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
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
    required TResult Function(_SendRepairRequest value) sendRepairRequest,
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
    TResult? Function(_SendRepairRequest value)? sendRepairRequest,
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
    TResult Function(_SendRepairRequest value)? sendRepairRequest,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared(this);
    }
    return orElse();
  }
}

abstract class _Cleared implements RepairSelectionEvent {
  const factory _Cleared() = _$ClearedImpl;
}

/// @nodoc
abstract class _$$SendRepairRequestImplCopyWith<$Res> {
  factory _$$SendRepairRequestImplCopyWith(
    _$SendRepairRequestImpl value,
    $Res Function(_$SendRepairRequestImpl) then,
  ) = __$$SendRepairRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String? carNumber,
    String takeCarAccount,
    Set<String> services,
    List<String> parts,
    dynamic axis1,
    dynamic axis2,
    String? photoFileName,
    String? comment,
    String? wpServiceId,
  });
}

/// @nodoc
class __$$SendRepairRequestImplCopyWithImpl<$Res>
    extends _$RepairSelectionEventCopyWithImpl<$Res, _$SendRepairRequestImpl>
    implements _$$SendRepairRequestImplCopyWith<$Res> {
  __$$SendRepairRequestImplCopyWithImpl(
    _$SendRepairRequestImpl _value,
    $Res Function(_$SendRepairRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RepairSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? carNumber = freezed,
    Object? takeCarAccount = null,
    Object? services = null,
    Object? parts = null,
    Object? axis1 = freezed,
    Object? axis2 = freezed,
    Object? photoFileName = freezed,
    Object? comment = freezed,
    Object? wpServiceId = freezed,
  }) {
    return _then(
      _$SendRepairRequestImpl(
        freezed == carNumber
            ? _value.carNumber
            : carNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        null == takeCarAccount
            ? _value.takeCarAccount
            : takeCarAccount // ignore: cast_nullable_to_non_nullable
                  as String,
        null == services
            ? _value._services
            : services // ignore: cast_nullable_to_non_nullable
                  as Set<String>,
        null == parts
            ? _value._parts
            : parts // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        freezed == axis1 ? _value.axis1! : axis1,
        freezed == axis2 ? _value.axis2! : axis2,
        freezed == photoFileName
            ? _value.photoFileName
            : photoFileName // ignore: cast_nullable_to_non_nullable
                  as String?,
        freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
                  as String?,
        freezed == wpServiceId
            ? _value.wpServiceId
            : wpServiceId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$SendRepairRequestImpl implements _SendRepairRequest {
  const _$SendRepairRequestImpl(
    this.carNumber,
    this.takeCarAccount,
    final Set<String> services,
    final List<String> parts,
    this.axis1,
    this.axis2,
    this.photoFileName,
    this.comment,
    this.wpServiceId,
  ) : _services = services,
      _parts = parts;

  @override
  final String? carNumber;
  @override
  final String takeCarAccount;
  final Set<String> _services;
  @override
  Set<String> get services {
    if (_services is EqualUnmodifiableSetView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_services);
  }

  final List<String> _parts;
  @override
  List<String> get parts {
    if (_parts is EqualUnmodifiableListView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  final dynamic axis1;
  @override
  final dynamic axis2;
  @override
  final String? photoFileName;
  @override
  final String? comment;
  @override
  final String? wpServiceId;

  @override
  String toString() {
    return 'RepairSelectionEvent.sendRepairRequest(carNumber: $carNumber, takeCarAccount: $takeCarAccount, services: $services, parts: $parts, axis1: $axis1, axis2: $axis2, photoFileName: $photoFileName, comment: $comment, wpServiceId: $wpServiceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendRepairRequestImpl &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.takeCarAccount, takeCarAccount) ||
                other.takeCarAccount == takeCarAccount) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._parts, _parts) &&
            const DeepCollectionEquality().equals(other.axis1, axis1) &&
            const DeepCollectionEquality().equals(other.axis2, axis2) &&
            (identical(other.photoFileName, photoFileName) ||
                other.photoFileName == photoFileName) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.wpServiceId, wpServiceId) ||
                other.wpServiceId == wpServiceId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    carNumber,
    takeCarAccount,
    const DeepCollectionEquality().hash(_services),
    const DeepCollectionEquality().hash(_parts),
    const DeepCollectionEquality().hash(axis1),
    const DeepCollectionEquality().hash(axis2),
    photoFileName,
    comment,
    wpServiceId,
  );

  /// Create a copy of RepairSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendRepairRequestImplCopyWith<_$SendRepairRequestImpl> get copyWith =>
      __$$SendRepairRequestImplCopyWithImpl<_$SendRepairRequestImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ImageSource source) photoPickerRequested,
    required TResult Function(ImageSource source) onPhotoSelected,
    required TResult Function() permissionsRequested,
    required TResult Function() cleared,
    required TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )
    sendRepairRequest,
  }) {
    return sendRepairRequest(
      carNumber,
      takeCarAccount,
      services,
      parts,
      axis1,
      axis2,
      photoFileName,
      comment,
      wpServiceId,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageSource source)? photoPickerRequested,
    TResult? Function(ImageSource source)? onPhotoSelected,
    TResult? Function()? permissionsRequested,
    TResult? Function()? cleared,
    TResult? Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
  }) {
    return sendRepairRequest?.call(
      carNumber,
      takeCarAccount,
      services,
      parts,
      axis1,
      axis2,
      photoFileName,
      comment,
      wpServiceId,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageSource source)? photoPickerRequested,
    TResult Function(ImageSource source)? onPhotoSelected,
    TResult Function()? permissionsRequested,
    TResult Function()? cleared,
    TResult Function(
      String? carNumber,
      String takeCarAccount,
      Set<String> services,
      List<String> parts,
      dynamic axis1,
      dynamic axis2,
      String? photoFileName,
      String? comment,
      String? wpServiceId,
    )?
    sendRepairRequest,
    required TResult orElse(),
  }) {
    if (sendRepairRequest != null) {
      return sendRepairRequest(
        carNumber,
        takeCarAccount,
        services,
        parts,
        axis1,
        axis2,
        photoFileName,
        comment,
        wpServiceId,
      );
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
    required TResult Function(_SendRepairRequest value) sendRepairRequest,
  }) {
    return sendRepairRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult? Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult? Function(_PermissionsRequested value)? permissionsRequested,
    TResult? Function(_Cleared value)? cleared,
    TResult? Function(_SendRepairRequest value)? sendRepairRequest,
  }) {
    return sendRepairRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoPickerRequested value)? photoPickerRequested,
    TResult Function(_OnPhotoSelected value)? onPhotoSelected,
    TResult Function(_PermissionsRequested value)? permissionsRequested,
    TResult Function(_Cleared value)? cleared,
    TResult Function(_SendRepairRequest value)? sendRepairRequest,
    required TResult orElse(),
  }) {
    if (sendRepairRequest != null) {
      return sendRepairRequest(this);
    }
    return orElse();
  }
}

abstract class _SendRepairRequest implements RepairSelectionEvent {
  const factory _SendRepairRequest(
    final String? carNumber,
    final String takeCarAccount,
    final Set<String> services,
    final List<String> parts,
    final dynamic axis1,
    final dynamic axis2,
    final String? photoFileName,
    final String? comment,
    final String? wpServiceId,
  ) = _$SendRepairRequestImpl;

  String? get carNumber;
  String get takeCarAccount;
  Set<String> get services;
  List<String> get parts;
  dynamic get axis1;
  dynamic get axis2;
  String? get photoFileName;
  String? get comment;
  String? get wpServiceId;

  /// Create a copy of RepairSelectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendRepairRequestImplCopyWith<_$SendRepairRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
