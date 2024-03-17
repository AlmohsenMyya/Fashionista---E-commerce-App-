import 'package:almohsen_s_application15/presentation/verification_code_screen/controller/verification_code_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationCodeScreen.
///
/// This class ensures that the VerificationCodeController is created when the
/// VerificationCodeScreen is first loaded.
class VerificationCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationCodeController());
  }
}
