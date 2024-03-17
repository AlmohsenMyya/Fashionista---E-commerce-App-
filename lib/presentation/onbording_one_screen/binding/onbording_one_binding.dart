import 'package:almohsen_s_application15/presentation/onbording_one_screen/controller/onbording_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OnbordingOneScreen.
///
/// This class ensures that the OnbordingOneController is created when the
/// OnbordingOneScreen is first loaded.
class OnbordingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnbordingOneController());
  }
}
