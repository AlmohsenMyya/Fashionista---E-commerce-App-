import 'package:almohsen_s_application15/presentation/complete_screen/controller/complete_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CompleteScreen.
///
/// This class ensures that the CompleteController is created when the
/// CompleteScreen is first loaded.
class CompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteController());
  }
}
