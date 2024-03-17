import 'package:almohsen_s_application15/presentation/onbording_three_screen/controller/onbording_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnbordingThreeScreen.
///
/// This class ensures that the OnbordingThreeController is created when the
/// OnbordingThreeScreen is first loaded.
class OnbordingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingThreeController());
  }
}
