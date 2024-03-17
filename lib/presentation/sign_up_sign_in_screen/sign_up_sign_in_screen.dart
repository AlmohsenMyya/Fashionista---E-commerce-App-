import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/sign_up_sign_in_controller.dart';

class SignUpSignInScreen extends GetWidget<SignUpSignInController> {
  const SignUpSignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 60.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgUnsplashW7b3edub2i,
                      height: 299.adaptSize,
                      width: 299.adaptSize,
                      radius: BorderRadius.circular(149.h)),
                  SizedBox(height: 80.v),
                  SizedBox(
                      width: 180.h,
                      child: Text("msg_discover_your_shopping".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.headlineSmallPrimary
                              .copyWith(height: 1.50))),
                  SizedBox(height: 10.v),
                  Container(
                      width: 308.h,
                      margin: EdgeInsets.only(left: 18.h, right: 17.h),
                      child: Text("msg_it_is_a_long_established".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumGray50015
                              .copyWith(height: 1.73))),
                  SizedBox(height: 38.v),
                  _buildFrameButtons(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildFrameButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomElevatedButton(
              text: "lbl_login".tr,
              margin: EdgeInsets.only(right: 11.h),
              onPressed: () {
                onTapLogin();
              })),
      Expanded(
          child: CustomElevatedButton(
              text: "lbl_register".tr,
              margin: EdgeInsets.only(left: 11.h),
              buttonStyle: CustomButtonStyles.fillGray,
              buttonTextStyle: CustomTextStyles.titleMedium16,
              onPressed: () {
                onTapRegister();
              }))
    ]);
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapRegister() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
