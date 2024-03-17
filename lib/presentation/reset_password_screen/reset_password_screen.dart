import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application15/core/utils/validation_functions.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/reset_password_controller.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  ResetPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 26.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_enter_a_new_password".tr,
                                      style: theme.textTheme.bodyLarge),
                                  SizedBox(height: 47.v),
                                  Obx(() => CustomTextFormField(
                                      controller:
                                          controller.newpasswordController,
                                      hintText: "lbl_new_password".tr,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword.value =
                                                !controller
                                                    .isShowPassword.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 18.v, 16.h, 18.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgIcon,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 52.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword.value,
                                      contentPadding: EdgeInsets.only(
                                          left: 16.h,
                                          top: 14.v,
                                          bottom: 14.v))),
                                  SizedBox(height: 20.v),
                                  Obx(() => CustomTextFormField(
                                      controller:
                                          controller.confirmpasswordController,
                                      hintText: "msg_confirm_password".tr,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword1.value =
                                                !controller
                                                    .isShowPassword1.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 18.v, 16.h, 18.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgIcon,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 52.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword1.value,
                                      contentPadding: EdgeInsets.only(
                                          left: 16.h,
                                          top: 14.v,
                                          bottom: 14.v))),
                                  Spacer(flex: 27),
                                  CustomElevatedButton(
                                      text: "lbl_confirm".tr,
                                      onPressed: () {
                                        onTapConfirm();
                                      }),
                                  Spacer(flex: 72)
                                ])))))));
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
        title: AppbarSubtitleOne(text: "lbl_reset_password".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the exploreShopScreen when the action is triggered.
  onTapConfirm() {
    Get.toNamed(
      AppRoutes.exploreShopScreen,
    );
  }
}
