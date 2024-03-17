import '../../../core/app_export.dart';
import 'checkoutlist_item_model.dart';

/// This class defines the variables used in the [checkout_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CheckoutModel {
  Rx<List<CheckoutlistItemModel>> checkoutlistItemList = Rx([
    CheckoutlistItemModel(
        creditCard: ImageConstant.imgUser.obs, creditCard1: "Credit Card".obs),
    CheckoutlistItemModel(
        creditCard: ImageConstant.imgFlatcoloriconsgoogle.obs,
        creditCard1: "Google Pay".obs),
    CheckoutlistItemModel(
        creditCard: ImageConstant.imgUimapple.obs,
        creditCard1: "Apple Pay".obs),
    CheckoutlistItemModel(
        creditCard: ImageConstant.imgTelevision.obs, creditCard1: "Paypal".obs)
  ]);
}
