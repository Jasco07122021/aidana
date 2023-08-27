part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState(
    String? nickName,
    String email,
  ) = _ProfileState;
}
