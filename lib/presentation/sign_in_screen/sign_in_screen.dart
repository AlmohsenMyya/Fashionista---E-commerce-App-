import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/core/utils/validation_functions.dart';
import 'package:almohsen_s_application15/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/sign_in_controller.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 25.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                  width: 134.h,
                                  child: Text("lbl_welcome_back".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.headlineMedium!
                                          .copyWith(height: 1.50)))),
                          SizedBox(height: 30.v),
                          _buildWelcomeBack(),
                          SizedBox(height: 20.v),
                          _buildSignInPassword(),
                          SizedBox(height: 13.v),
                          Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotPassword();
                                  },
                                  child: Text("lbl_forgot_password".tr,
                                      style: theme.textTheme.titleSmall))),
                          SizedBox(height: 131.v),
                          _buildLoginButton(),
                          SizedBox(height: 16.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtDonthaveanaccount();
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_have_an_account2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumff979797),
                                    TextSpan(
                                        text: "lbl_register".tr,
                                        style:
                                            CustomTextStyles.titleSmallff000000)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 31.v),
                          _buildFrameSeventeen(),
                          SizedBox(height: 20.v),
                          _buildFrame()
                        ]))))));
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
        title: AppbarSubtitleOne(text: "lbl_let_s_sign_in".tr));
  }

  /// Section Widget
  Widget _buildWelcomeBack() {
    return CustomTextFormField(
        controller: controller.welcomeBackController,
        hintText: "lbl_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildSignInPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.signInPasswordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIcon,
                    height: 16.adaptSize,
                    width: 16.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 52.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value,
        contentPadding: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 14.v)));
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomElevatedButton(text: "lbl_login".tr);
  }

  /// Section Widget
  Widget _buildOrContinueWithButton() {
    return CustomElevatedButton(
        height: 41.v,
        width: 133.h,
        text: "msg_or_continue_with".tr,
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: theme.textTheme.bodyMedium!);
  }

  /// Section Widget
  Widget _buildFrameSeventeen() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: SizedBox(width: 105.h, child: Divider())),
      _buildOrContinueWithButton(),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: SizedBox(width: 105.h, child: Divider()))
    ]);
  }

  /// Section Widget
  Widget _buildGoogleButton() {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_google".tr,
            margin: EdgeInsets.only(right: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFlatcoloriconsgoogle,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            buttonStyle: CustomButtonStyles.fillGrayTL10,
            buttonTextStyle: theme.textTheme.bodyLarge!));
  }

  /// Section Widget
  Widget _buildAppleButton() {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_apple".tr,
            margin: EdgeInsets.only(left: 11.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 8.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgUimapple,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            buttonStyle: CustomButtonStyles.fillGrayTL10,
            buttonTextStyle: theme.textTheme.bodyLarge!));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildGoogleButton(), _buildAppleButton()]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
