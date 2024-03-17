import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/widgets/custom_pin_code_text_field.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/verification_code_controller.dart';

class VerificationCodeScreen extends GetWidget<VerificationCodeController> {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 26.v),
                child: Column(children: [
                  Text("msg_enter_the_code_we".tr,
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 97.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      child: Obx(() => CustomPinCodeTextField(
                          context: Get.context!,
                          controller: controller.otpController.value,
                          onChanged: (value) {}))),
                  SizedBox(height: 15.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_did_t_receive_a2".tr,
                            style: CustomTextStyles.bodyMediumff979797),
                        TextSpan(
                            text: "lbl_resent_code".tr,
                            style: CustomTextStyles.titleSmallff000000)
                      ]),
                      textAlign: TextAlign.left),
                  Spacer(flex: 25),
                  CustomElevatedButton(
                      text: "lbl_confirm".tr,
                      onPressed: () {
                        onTapConfirm();
                      }),
                  Spacer(flex: 74)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "msg_verification_code".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapConfirm() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
