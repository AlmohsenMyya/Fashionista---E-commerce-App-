import 'package:almohsen_s_application15/presentation/explore_shop_screen/controller/explore_shop_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExploreShopScreen.
///
/// This class ensures that the ExploreShopController is created when the
/// ExploreShopScreen is first loaded.
class ExploreShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreShopController());
  }
}
