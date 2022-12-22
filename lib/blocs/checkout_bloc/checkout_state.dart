part of 'checkout_bloc.dart';

@freezed
class CheckoutState with _$CheckoutState {
  factory CheckoutState.initial() {

    return const CheckoutState(checkoutStatus: CheckoutStatus.init);
  }

  const factory CheckoutState({
    required CheckoutStatus checkoutStatus,
  }) = checkoutState;
}
