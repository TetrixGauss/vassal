part of 'log_in_bloc.dart';

@freezed
class LogInState with _$LogInState {
  factory LogInState.initial() {
    return const LogInState(loginStatus: LoginStatus.logInWaiting, errorMessage: "");
  }

  const factory LogInState({
    required LoginStatus loginStatus,
    required String errorMessage,
  }) = logInState;
}
