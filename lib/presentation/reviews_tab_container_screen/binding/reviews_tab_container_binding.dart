import 'package:almohsen_s_application15/presentation/reviews_tab_container_screen/controller/reviews_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReviewsTabContainerScreen.
///
/// This class ensures that the ReviewsTabContainerController is created when the
/// ReviewsTabContainerScreen is first loaded.
class ReviewsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReviewsTabContainerController());
  }
}
