import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:vassal/helpers/payment_helper.dart';
import 'package:vassal/repositories/user_repo.dart';
import 'package:vassal/utils/constants/general.dart';
import 'package:vassal/utils/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/user_model.dart';

part 'checkout_event.dart';

part 'checkout_bloc.freezed.dart';

part 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  late final UserRepository _userRepository;
  late final PaymentHelper _paymentHelper;

  CheckoutBloc(this._userRepository) : super(CheckoutState.initial()) {
    on<CheckoutEvent>((event, emit) async {
      await event.when(proceedPayment: () async{
        _paymentHelper = PaymentHelper(General.product);
        List<ProductDetails> productDetails = await _paymentHelper.initStoreProducts();
        await _paymentHelper.proceedToPayment(
            product: productDetails[0]);
      });
    });
  }
}
