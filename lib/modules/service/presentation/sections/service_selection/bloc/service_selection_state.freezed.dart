// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_selection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ServiceSelectionState {
  Set<String> get selectedKeys => throw _privateConstructorUsedError;

  /// Create a copy of ServiceSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceSelectionStateCopyWith<ServiceSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceSelectionStateCopyWith<$Res> {
  factory $ServiceSelectionStateCopyWith(
    ServiceSelectionState value,
    $Res Function(ServiceSelectionState) then,
  ) = _$ServiceSelectionStateCopyWithImpl<$Res, ServiceSelectionState>;
  @useResult
  $Res call({Set<String> selectedKeys});
}

/// @nodoc
class _$ServiceSelectionStateCopyWithImpl<
  $Res,
  $Val extends ServiceSelectionState
>
    implements $ServiceSelectionStateCopyWith<$Res> {
  _$ServiceSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedKeys = null}) {
    return _then(
      _value.copyWith(
            selectedKeys: null == selectedKeys
                ? _value.selectedKeys
                : selectedKeys // ignore: cast_nullable_to_non_nullable
                      as Set<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ServiceSelectionStateImplCopyWith<$Res>
    implements $ServiceSelectionStateCopyWith<$Res> {
  factory _$$ServiceSelectionStateImplCopyWith(
    _$ServiceSelectionStateImpl value,
    $Res Function(_$ServiceSelectionStateImpl) then,
  ) = __$$ServiceSelectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> selectedKeys});
}

/// @nodoc
class __$$ServiceSelectionStateImplCopyWithImpl<$Res>
    extends
        _$ServiceSelectionStateCopyWithImpl<$Res, _$ServiceSelectionStateImpl>
    implements _$$ServiceSelectionStateImplCopyWith<$Res> {
  __$$ServiceSelectionStateImplCopyWithImpl(
    _$ServiceSelectionStateImpl _value,
    $Res Function(_$ServiceSelectionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ServiceSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? selectedKeys = null}) {
    return _then(
      _$ServiceSelectionStateImpl(
        selectedKeys: null == selectedKeys
            ? _value._selectedKeys
            : selectedKeys // ignore: cast_nullable_to_non_nullable
                  as Set<String>,
      ),
    );
  }
}

/// @nodoc

class _$ServiceSelectionStateImpl implements _ServiceSelectionState {
  const _$ServiceSelectionStateImpl({
    final Set<String> selectedKeys = const <String>{},
  }) : _selectedKeys = selectedKeys;

  final Set<String> _selectedKeys;
  @override
  @JsonKey()
  Set<String> get selectedKeys {
    if (_selectedKeys is EqualUnmodifiableSetView) return _selectedKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedKeys);
  }

  @override
  String toString() {
    return 'ServiceSelectionState(selectedKeys: $selectedKeys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceSelectionStateImpl &&
            const DeepCollectionEquality().equals(
              other._selectedKeys,
              _selectedKeys,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_selectedKeys),
  );

  /// Create a copy of ServiceSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceSelectionStateImplCopyWith<_$ServiceSelectionStateImpl>
  get copyWith =>
      __$$ServiceSelectionStateImplCopyWithImpl<_$ServiceSelectionStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ServiceSelectionState implements ServiceSelectionState {
  const factory _ServiceSelectionState({final Set<String> selectedKeys}) =
      _$ServiceSelectionStateImpl;

  @override
  Set<String> get selectedKeys;

  /// Create a copy of ServiceSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceSelectionStateImplCopyWith<_$ServiceSelectionStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
