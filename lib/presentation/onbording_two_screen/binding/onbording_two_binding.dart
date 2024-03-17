import 'package:almohsen_s_application15/presentation/onbording_two_screen/controller/onbording_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnbordingTwoScreen.
///
/// This class ensures that the OnbordingTwoController is created when the
/// OnbordingTwoScreen is first loaded.
class OnbordingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingTwoController());
  }
}
