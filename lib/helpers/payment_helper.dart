import 'dart:async';
import 'dart:io';

import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
// import 'package:imon/utilities/consumable_store.dart';

class PaymentHelper {
  PaymentHelper(this.selectedSubIds);

  initializeInAppBilling() {
    initStoreProducts();
  }

  StreamController<List<ProductDetails>> productsStreamController = StreamController<List<ProductDetails>>.broadcast();
  final InAppPurchase inAppPurchase = InAppPurchase.instance;
  List<String> selectedSubIds = [];

  late StreamSubscription<List<PurchaseDetails>> subscription;
  late Stream<List<PurchaseDetails>> purchaseUpdated;
  StreamController<bool> purchaseCompleted = StreamController<bool>();

  Future<List<ProductDetails>> initStoreProducts() async {
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          inAppPurchase
              .getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      await iosPlatformAddition.setDelegate(ExamplePaymentQueueDelegate());
    }
    final ProductDetailsResponse productDetailResponse = await inAppPurchase.
    queryProductDetails(selectedSubIds.toSet());
    productsStreamController.sink.add(productDetailResponse.productDetails);
    return productDetailResponse.productDetails;
  }

  proceedToPayment({required ProductDetails product}) async {
    PurchaseParam purchaseParam;
    if (Platform.isAndroid) {
      purchaseParam = GooglePlayPurchaseParam(productDetails: product);
    } else {
      purchaseParam = PurchaseParam(productDetails: product);
    }
    inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
  }

  Future<void> deliverProduct(PurchaseDetails purchaseDetails) async {
    // await ConsumableStore.save(purchaseDetails.purchaseID);
  }

  dispose() {
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition =
          inAppPurchase.getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      iosPlatformAddition.setDelegate(null);
    }
  }
}

class ExamplePaymentQueueDelegate implements SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(
      SKPaymentTransactionWrapper transaction, SKStorefrontWrapper storefront) {
    return true;
  }

  @override
  bool shouldShowPriceConsent() {
    return false;
  }
}
