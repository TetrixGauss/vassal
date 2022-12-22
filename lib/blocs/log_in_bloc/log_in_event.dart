part of 'log_in_bloc.dart';

@freezed
class LogInEvent with _$LogInEvent {

  const factory LogInEvent.loginEvent(
      final String email, final String password) = loginEvent;

  const factory LogInEvent.facebookLoginEvent(
      final String email, final String password) = facebookLoginEvent;

  const factory LogInEvent.googleLoginEvent(
      final String email, final String password) = googleLoginEvent;

  const factory LogInEvent.forgotPassword() = forgotPassword;

  const factory LogInEvent.register(final String email, final String password, final String firstName, final String lastName, final String phone) = register;

  const factory LogInEvent.goToRegister() = goToRegister;

  const factory LogInEvent.resetPassword(final String email) = resetPassword;

  const factory LogInEvent.back() = back;

}
