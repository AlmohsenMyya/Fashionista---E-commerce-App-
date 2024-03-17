import 'package:almohsen_s_application15/presentation/information_screen/controller/information_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InformationScreen.
///
/// This class ensures that the InformationController is created when the
/// InformationScreen is first loaded.
class InformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InformationController());
  }
}
