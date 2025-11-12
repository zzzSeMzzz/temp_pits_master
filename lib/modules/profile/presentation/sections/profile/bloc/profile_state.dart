import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/model/profile.dart';
part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = ProfileStateLoading;
  factory ProfileState.success(
      User user,
  ) = ProfileStateSuccess;
  const factory ProfileState.error(String message) = ProfileStateError;
  factory ProfileState.onRemoved() = ProfileStateRemoved;
}