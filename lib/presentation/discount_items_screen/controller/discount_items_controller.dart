import '../../../core/app_export.dart';
import '../models/discount_items_model.dart';

/// A controller class for the DiscountItemsScreen.
///
/// This class manages the state of the DiscountItemsScreen, including the
/// current discountItemsModelObj
class DiscountItemsController extends GetxController {
  Rx<DiscountItemsModel> discountItemsModelObj = DiscountItemsModel().obs;
}
