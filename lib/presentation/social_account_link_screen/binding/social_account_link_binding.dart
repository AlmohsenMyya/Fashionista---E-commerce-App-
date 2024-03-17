import 'package:almohsen_s_application15/presentation/social_account_link_screen/controller/social_account_link_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SocialAccountLinkScreen.
///
/// This class ensures that the SocialAccountLinkController is created when the
/// SocialAccountLinkScreen is first loaded.
class SocialAccountLinkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocialAccountLinkController());
  }
}
