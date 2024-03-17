import 'package:almohsen_s_application15/presentation/sign_up_sign_in_screen/controller/sign_up_sign_in_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpSignInScreen.
///
/// This class ensures that the SignUpSignInController is created when the
/// SignUpSignInScreen is first loaded.
class SignUpSignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpSignInController());
  }
}
