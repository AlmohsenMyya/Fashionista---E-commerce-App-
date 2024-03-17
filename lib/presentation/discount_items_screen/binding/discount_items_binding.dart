import 'package:almohsen_s_application15/presentation/discount_items_screen/controller/discount_items_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DiscountItemsScreen.
///
/// This class ensures that the DiscountItemsController is created when the
/// DiscountItemsScreen is first loaded.
class DiscountItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscountItemsController());
  }
}
