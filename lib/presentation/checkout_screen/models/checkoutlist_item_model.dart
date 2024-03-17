import '../../../core/app_export.dart';

/// This class is used in the [checkoutlist_item_widget] screen.
class CheckoutlistItemModel {
  CheckoutlistItemModel({
    this.creditCard,
    this.creditCard1,
    this.id,
  }) {
    creditCard = creditCard ?? Rx(ImageConstant.imgUser);
    creditCard1 = creditCard1 ?? Rx("Credit Card");
    id = id ?? Rx("");
  }

  Rx<String>? creditCard;

  Rx<String>? creditCard1;

  Rx<String>? id;
}
