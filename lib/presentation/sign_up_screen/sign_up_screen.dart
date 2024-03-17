import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/core/utils/validation_functions.dart';
import 'package:almohsen_s_application15/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/sign_up_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(top: 26.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                  width: 126.h,
                                  child: Text("lbl_create_account".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.headlineMedium!
                                          .copyWith(height: 1.50)))),
                          SizedBox(height: 29.v),
                          _buildCreateAccount(),
                          SizedBox(height: 20.v),
                          _buildEmail(),
                          SizedBox(height: 20.v),
                          _buildPassword(),
                          SizedBox(height: 94.v),
                          _buildRegister(),
                          SizedBox(height: 16.v),
                          GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean();
                              },
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_already_have_an2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumff979797),
                                    TextSpan(
                                        text: "lbl_login".tr,
                                        style:
                                            CustomTextStyles.titleSmallff000000)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 31.v),
                          _buildSignUp(),
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
        title: AppbarSubtitleOne(text: "lbl_let_s_sign_up".tr));
  }

  /// Section Widget
  Widget _buildCreateAccount() {
    return CustomTextFormField(
        controller: controller.createAccountController,
        hintText: "lbl_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
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
  Widget _buildRegister() {
    return CustomElevatedButton(text: "lbl_register".tr);
  }

  /// Section Widget
  Widget _buildFrameSeventeen() {
    return CustomElevatedButton(
        height: 41.v,
        width: 133.h,
        text: "msg_or_continue_with".tr,
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: theme.textTheme.bodyMedium!);
  }

  /// Section Widget
  Widget _buildSignUp() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: SizedBox(width: 105.h, child: Divider())),
      _buildFrameSeventeen(),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 19.v),
          child: SizedBox(width: 105.h, child: Divider()))
    ]);
  }

  /// Section Widget
  Widget _buildGoogle() {
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
  Widget _buildApple() {
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
        children: [_buildGoogle(), _buildApple()]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
