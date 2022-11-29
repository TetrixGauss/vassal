part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState.initial() {
    return ProfileState(profileStatus: ProfileStatus.init, errorMessage: "", paidUser: false, user: User.newUser(), appointments: []);
  }

  const factory ProfileState({
    required ProfileStatus profileStatus,
    required String errorMessage,
    required bool paidUser,
    required User? user,
    required List<dynamic> appointments,
  }) = profileState;
}