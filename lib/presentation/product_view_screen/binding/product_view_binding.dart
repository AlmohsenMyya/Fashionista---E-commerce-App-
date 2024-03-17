import 'package:almohsen_s_application15/presentation/product_view_screen/controller/product_view_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductViewScreen.
///
/// This class ensures that the ProductViewController is created when the
/// ProductViewScreen is first loaded.
class ProductViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductViewController());
  }
}
