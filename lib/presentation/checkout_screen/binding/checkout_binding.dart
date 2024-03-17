import 'package:almohsen_s_application15/presentation/checkout_screen/controller/checkout_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CheckoutScreen.
///
/// This class ensures that the CheckoutController is created when the
/// CheckoutScreen is first loaded.
class CheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutController());
  }
}
