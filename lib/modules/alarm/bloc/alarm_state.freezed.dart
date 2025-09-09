// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AlarmState {
  AlarmModel get alarmModel => throw _privateConstructorUsedError;
  ApiResponse<dynamic> get responseState => throw _privateConstructorUsedError;
  String? get selectedAlarm => throw _privateConstructorUsedError;
  bool get isStartEngine => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  LatLng? get currentPosition => throw _privateConstructorUsedError;

  /// Create a copy of AlarmState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlarmStateCopyWith<AlarmState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmStateCopyWith<$Res> {
  factory $AlarmStateCopyWith(
    AlarmState value,
    $Res Function(AlarmState) then,
  ) = _$AlarmStateCopyWithImpl<$Res, AlarmState>;
  @useResult
  $Res call({
    AlarmModel alarmModel,
    ApiResponse<dynamic> responseState,
    String? selectedAlarm,
    bool isStartEngine,
    int currentPage,
    LatLng? currentPosition,
  });
}

/// @nodoc
class _$AlarmStateCopyWithImpl<$Res, $Val extends AlarmState>
    implements $AlarmStateCopyWith<$Res> {
  _$AlarmStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlarmState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarmModel = null,
    Object? responseState = null,
    Object? selectedAlarm = freezed,
    Object? isStartEngine = null,
    Object? currentPage = null,
    Object? currentPosition = freezed,
  }) {
    return _then(
      _value.copyWith(
            alarmModel: null == alarmModel
                ? _value.alarmModel
                : alarmModel // ignore: cast_nullable_to_non_nullable
                      as AlarmModel,
            responseState: null == responseState
                ? _value.responseState
                : responseState // ignore: cast_nullable_to_non_nullable
                      as ApiResponse<dynamic>,
            selectedAlarm: freezed == selectedAlarm
                ? _value.selectedAlarm
                : selectedAlarm // ignore: cast_nullable_to_non_nullable
                      as String?,
            isStartEngine: null == isStartEngine
                ? _value.isStartEngine
                : isStartEngine // ignore: cast_nullable_to_non_nullable
                      as bool,
            currentPage: null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int,
            currentPosition: freezed == currentPosition
                ? _value.currentPosition
                : currentPosition // ignore: cast_nullable_to_non_nullable
                      as LatLng?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AlarmStateImplCopyWith<$Res>
    implements $AlarmStateCopyWith<$Res> {
  factory _$$AlarmStateImplCopyWith(
    _$AlarmStateImpl value,
    $Res Function(_$AlarmStateImpl) then,
  ) = __$$AlarmStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    AlarmModel alarmModel,
    ApiResponse<dynamic> responseState,
    String? selectedAlarm,
    bool isStartEngine,
    int currentPage,
    LatLng? currentPosition,
  });
}

/// @nodoc
class __$$AlarmStateImplCopyWithImpl<$Res>
    extends _$AlarmStateCopyWithImpl<$Res, _$AlarmStateImpl>
    implements _$$AlarmStateImplCopyWith<$Res> {
  __$$AlarmStateImplCopyWithImpl(
    _$AlarmStateImpl _value,
    $Res Function(_$AlarmStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AlarmState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarmModel = null,
    Object? responseState = null,
    Object? selectedAlarm = freezed,
    Object? isStartEngine = null,
    Object? currentPage = null,
    Object? currentPosition = freezed,
  }) {
    return _then(
      _$AlarmStateImpl(
        alarmModel: null == alarmModel
            ? _value.alarmModel
            : alarmModel // ignore: cast_nullable_to_non_nullable
                  as AlarmModel,
        responseState: null == responseState
            ? _value.responseState
            : responseState // ignore: cast_nullable_to_non_nullable
                  as ApiResponse<dynamic>,
        selectedAlarm: freezed == selectedAlarm
            ? _value.selectedAlarm
            : selectedAlarm // ignore: cast_nullable_to_non_nullable
                  as String?,
        isStartEngine: null == isStartEngine
            ? _value.isStartEngine
            : isStartEngine // ignore: cast_nullable_to_non_nullable
                  as bool,
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
        currentPosition: freezed == currentPosition
            ? _value.currentPosition
            : currentPosition // ignore: cast_nullable_to_non_nullable
                  as LatLng?,
      ),
    );
  }
}

/// @nodoc

class _$AlarmStateImpl implements _AlarmState {
  _$AlarmStateImpl({
    this.alarmModel = const AlarmModel(carStart: true),
    this.responseState = const Init(),
    this.selectedAlarm,
    this.isStartEngine = true,
    this.currentPage = 0,
    this.currentPosition,
  });

  @override
  @JsonKey()
  final AlarmModel alarmModel;
  @override
  @JsonKey()
  final ApiResponse<dynamic> responseState;
  @override
  final String? selectedAlarm;
  @override
  @JsonKey()
  final bool isStartEngine;
  @override
  @JsonKey()
  final int currentPage;
  @override
  final LatLng? currentPosition;

  @override
  String toString() {
    return 'AlarmState(alarmModel: $alarmModel, responseState: $responseState, selectedAlarm: $selectedAlarm, isStartEngine: $isStartEngine, currentPage: $currentPage, currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlarmStateImpl &&
            (identical(other.alarmModel, alarmModel) ||
                other.alarmModel == alarmModel) &&
            (identical(other.responseState, responseState) ||
                other.responseState == responseState) &&
            (identical(other.selectedAlarm, selectedAlarm) ||
                other.selectedAlarm == selectedAlarm) &&
            (identical(other.isStartEngine, isStartEngine) ||
                other.isStartEngine == isStartEngine) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    alarmModel,
    responseState,
    selectedAlarm,
    isStartEngine,
    currentPage,
    currentPosition,
  );

  /// Create a copy of AlarmState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlarmStateImplCopyWith<_$AlarmStateImpl> get copyWith =>
      __$$AlarmStateImplCopyWithImpl<_$AlarmStateImpl>(this, _$identity);
}

abstract class _AlarmState implements AlarmState {
  factory _AlarmState({
    final AlarmModel alarmModel,
    final ApiResponse<dynamic> responseState,
    final String? selectedAlarm,
    final bool isStartEngine,
    final int currentPage,
    final LatLng? currentPosition,
  }) = _$AlarmStateImpl;

  @override
  AlarmModel get alarmModel;
  @override
  ApiResponse<dynamic> get responseState;
  @override
  String? get selectedAlarm;
  @override
  bool get isStartEngine;
  @override
  int get currentPage;
  @override
  LatLng? get currentPosition;

  /// Create a copy of AlarmState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlarmStateImplCopyWith<_$AlarmStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
