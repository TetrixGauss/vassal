part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  factory SplashState.initial() {

    return const SplashState(splashStatus: SplashStatus.init);
  }

  const factory SplashState({
    required SplashStatus splashStatus,
  }) = splashState;
}
