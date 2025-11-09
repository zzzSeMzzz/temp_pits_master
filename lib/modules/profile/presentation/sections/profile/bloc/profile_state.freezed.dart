// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(String message) error,
    required TResult Function() onRemoved,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(String message)? error,
    TResult? Function()? onRemoved,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function(String message)? error,
    TResult Function()? onRemoved,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
    required TResult Function(ProfileStateRemoved value) onRemoved,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
    TResult? Function(ProfileStateRemoved value)? onRemoved,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    TResult Function(ProfileStateRemoved value)? onRemoved,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
    ProfileState value,
    $Res Function(ProfileState) then,
  ) = _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileStateLoadingImplCopyWith<$Res> {
  factory _$$ProfileStateLoadingImplCopyWith(
    _$ProfileStateLoadingImpl value,
    $Res Function(_$ProfileStateLoadingImpl) then,
  ) = __$$ProfileStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStateLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateLoadingImpl>
    implements _$$ProfileStateLoadingImplCopyWith<$Res> {
  __$$ProfileStateLoadingImplCopyWithImpl(
    _$ProfileStateLoadingImpl _value,
    $Res Function(_$ProfileStateLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileStateLoadingImpl implements ProfileStateLoading {
  const _$ProfileStateLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(String message) error,
    required TResult Function() onRemoved,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(String message)? error,
    TResult? Function()? onRemoved,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function(String message)? error,
    TResult Function()? onRemoved,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
    required TResult Function(ProfileStateRemoved value) onRemoved,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
    TResult? Function(ProfileStateRemoved value)? onRemoved,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    TResult Function(ProfileStateRemoved value)? onRemoved,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileStateLoading implements ProfileState {
  const factory ProfileStateLoading() = _$ProfileStateLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileStateSuccessImplCopyWith<$Res> {
  factory _$$ProfileStateSuccessImplCopyWith(
    _$ProfileStateSuccessImpl value,
    $Res Function(_$ProfileStateSuccessImpl) then,
  ) = __$$ProfileStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$ProfileStateSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateSuccessImpl>
    implements _$$ProfileStateSuccessImplCopyWith<$Res> {
  __$$ProfileStateSuccessImplCopyWithImpl(
    _$ProfileStateSuccessImpl _value,
    $Res Function(_$ProfileStateSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null}) {
    return _then(
      _$ProfileStateSuccessImpl(
        null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User,
      ),
    );
  }
}

/// @nodoc

class _$ProfileStateSuccessImpl implements ProfileStateSuccess {
  _$ProfileStateSuccessImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateSuccessImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateSuccessImplCopyWith<_$ProfileStateSuccessImpl> get copyWith =>
      __$$ProfileStateSuccessImplCopyWithImpl<_$ProfileStateSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(String message) error,
    required TResult Function() onRemoved,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(String message)? error,
    TResult? Function()? onRemoved,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function(String message)? error,
    TResult Function()? onRemoved,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
    required TResult Function(ProfileStateRemoved value) onRemoved,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
    TResult? Function(ProfileStateRemoved value)? onRemoved,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    TResult Function(ProfileStateRemoved value)? onRemoved,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProfileStateSuccess implements ProfileState {
  factory ProfileStateSuccess(final User user) = _$ProfileStateSuccessImpl;

  User get user;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateSuccessImplCopyWith<_$ProfileStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileStateErrorImplCopyWith<$Res> {
  factory _$$ProfileStateErrorImplCopyWith(
    _$ProfileStateErrorImpl value,
    $Res Function(_$ProfileStateErrorImpl) then,
  ) = __$$ProfileStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProfileStateErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateErrorImpl>
    implements _$$ProfileStateErrorImplCopyWith<$Res> {
  __$$ProfileStateErrorImplCopyWithImpl(
    _$ProfileStateErrorImpl _value,
    $Res Function(_$ProfileStateErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ProfileStateErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProfileStateErrorImpl implements ProfileStateError {
  const _$ProfileStateErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateErrorImplCopyWith<_$ProfileStateErrorImpl> get copyWith =>
      __$$ProfileStateErrorImplCopyWithImpl<_$ProfileStateErrorImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(String message) error,
    required TResult Function() onRemoved,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(String message)? error,
    TResult? Function()? onRemoved,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function(String message)? error,
    TResult Function()? onRemoved,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
    required TResult Function(ProfileStateRemoved value) onRemoved,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
    TResult? Function(ProfileStateRemoved value)? onRemoved,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    TResult Function(ProfileStateRemoved value)? onRemoved,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileStateError implements ProfileState {
  const factory ProfileStateError(final String message) =
      _$ProfileStateErrorImpl;

  String get message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateErrorImplCopyWith<_$ProfileStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileStateRemovedImplCopyWith<$Res> {
  factory _$$ProfileStateRemovedImplCopyWith(
    _$ProfileStateRemovedImpl value,
    $Res Function(_$ProfileStateRemovedImpl) then,
  ) = __$$ProfileStateRemovedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStateRemovedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateRemovedImpl>
    implements _$$ProfileStateRemovedImplCopyWith<$Res> {
  __$$ProfileStateRemovedImplCopyWithImpl(
    _$ProfileStateRemovedImpl _value,
    $Res Function(_$ProfileStateRemovedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileStateRemovedImpl implements ProfileStateRemoved {
  _$ProfileStateRemovedImpl();

  @override
  String toString() {
    return 'ProfileState.onRemoved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateRemovedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User user) success,
    required TResult Function(String message) error,
    required TResult Function() onRemoved,
  }) {
    return onRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User user)? success,
    TResult? Function(String message)? error,
    TResult? Function()? onRemoved,
  }) {
    return onRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User user)? success,
    TResult Function(String message)? error,
    TResult Function()? onRemoved,
    required TResult orElse(),
  }) {
    if (onRemoved != null) {
      return onRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
    required TResult Function(ProfileStateRemoved value) onRemoved,
  }) {
    return onRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
    TResult? Function(ProfileStateRemoved value)? onRemoved,
  }) {
    return onRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    TResult Function(ProfileStateRemoved value)? onRemoved,
    required TResult orElse(),
  }) {
    if (onRemoved != null) {
      return onRemoved(this);
    }
    return orElse();
  }
}

abstract class ProfileStateRemoved implements ProfileState {
  factory ProfileStateRemoved() = _$ProfileStateRemovedImpl;
}
