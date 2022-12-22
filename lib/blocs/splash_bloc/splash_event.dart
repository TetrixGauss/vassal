part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.goTo(final bool loggedIn) = goToEvent;
  const factory SplashEvent.checkLoggedIn() = checkLoggedInEvent;
}
