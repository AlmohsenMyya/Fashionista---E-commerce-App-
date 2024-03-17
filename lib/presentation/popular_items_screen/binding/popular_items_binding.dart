import 'package:almohsen_s_application15/presentation/popular_items_screen/controller/popular_items_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PopularItemsScreen.
///
/// This class ensures that the PopularItemsController is created when the
/// PopularItemsScreen is first loaded.
class PopularItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PopularItemsController());
  }
}
