import '../../../core/app_export.dart';

/// This class is used in the [socialaccountlink_item_widget] screen.
class SocialaccountlinkItemModel {
  SocialaccountlinkItemModel({
    this.facebook,
    this.facebook1,
    this.welcomeToFacebook,
    this.facebook2,
    this.id,
  }) {
    facebook = facebook ?? Rx(ImageConstant.imgLogosFacebook);
    facebook1 = facebook1 ?? Rx("Facebook");
    welcomeToFacebook = welcomeToFacebook ?? Rx("Welcome to Facebook");
    facebook2 = facebook2 ?? Rx(ImageConstant.imgGroup1198);
    id = id ?? Rx("");
  }

  Rx<String>? facebook;

  Rx<String>? facebook1;

  Rx<String>? welcomeToFacebook;

  Rx<String>? facebook2;

  Rx<String>? id;
}
