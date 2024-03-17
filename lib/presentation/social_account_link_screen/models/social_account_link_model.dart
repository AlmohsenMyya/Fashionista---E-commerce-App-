import '../../../core/app_export.dart';
import 'socialaccountlink_item_model.dart';

/// This class defines the variables used in the [social_account_link_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SocialAccountLinkModel {
  Rx<List<SocialaccountlinkItemModel>> socialaccountlinkItemList = Rx([
    SocialaccountlinkItemModel(
        facebook: ImageConstant.imgLogosFacebook.obs,
        facebook1: "Facebook".obs,
        welcomeToFacebook: "Welcome to Facebook".obs,
        facebook2: ImageConstant.imgGroup1198.obs),
    SocialaccountlinkItemModel(
        facebook: ImageConstant.imgGroup1194.obs,
        facebook1: "Instagram".obs,
        welcomeToFacebook: "Welcome to Instagram".obs,
        facebook2: ImageConstant.imgGroup1198.obs),
    SocialaccountlinkItemModel(
        facebook: ImageConstant.imgLogosTwitter.obs,
        facebook1: "Twitter".obs,
        welcomeToFacebook: "Welcome to Twitter".obs,
        facebook2: ImageConstant.imgGroup1198Red800.obs),
    SocialaccountlinkItemModel(
        facebook: ImageConstant.imgGoogle.obs,
        facebook1: "Google".obs,
        welcomeToFacebook: "Welcome to Google".obs,
        facebook2: ImageConstant.imgGroup1198.obs)
  ]);
}
