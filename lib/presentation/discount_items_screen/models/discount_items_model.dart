import '../../../core/app_export.dart';
import 'discountitems_item_model.dart';

/// This class defines the variables used in the [discount_items_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DiscountItemsModel {
  Rx<List<DiscountitemsItemModel>> discountitemsItemList = Rx([
    DiscountitemsItemModel(
        premiumWatch: ImageConstant.imgUnsplashJj0tls2rod4.obs,
        premiumWatch1: "Premium Watch".obs),
    DiscountitemsItemModel(
        premiumWatch: ImageConstant.imgUnsplashJj0tls2rod458x58.obs,
        premiumWatch1: "Blue shoes".obs),
    DiscountitemsItemModel(
        premiumWatch: ImageConstant.imgUnsplashJj0tls2rod41.obs,
        premiumWatch1: "Jamdan Dress".obs)
  ]);
}
