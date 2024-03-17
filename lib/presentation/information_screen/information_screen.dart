import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/widgets/custom_icon_button.dart';
import 'package:almohsen_s_application15/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/information_controller.dart';

class InformationScreen extends GetWidget<InformationController> {
  const InformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(children: [
                  SizedBox(
                      height: 105.v,
                      width: 92.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse5,
                            height: 91.v,
                            width: 92.h,
                            radius: BorderRadius.circular(46.h),
                            alignment: Alignment.topCenter),
                        CustomIconButton(
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            decoration: IconButtonStyleHelper.outlineWhiteA,
                            alignment: Alignment.bottomCenter,
                            onTap: () {
                              onTapBtnIcon();
                            },
                            child: CustomImageView(
                                imagePath: ImageConstant.imgIconWhiteA700))
                      ])),
                  SizedBox(height: 5.v),
                  Text("lbl_anne_christion".tr,
                      style: theme.textTheme.titleLarge),
                  SizedBox(height: 1.v),
                  Text("lbl_xyz_gmail_com".tr,
                      style: CustomTextStyles.bodyMediumGray500),
                  SizedBox(height: 18.v),
                  _buildInputFieldWithName(),
                  SizedBox(height: 19.v),
                  _buildInputFieldWithDateOfBirth(),
                  SizedBox(height: 19.v),
                  _buildInputFieldWithAddress(),
                  SizedBox(height: 19.v),
                  _buildInputFieldWithMobileNumber(),
                  SizedBox(height: 8.v)
                ])),
            bottomNavigationBar: _buildCompleteButton()));
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
        title: AppbarSubtitleOne(text: "lbl_information".tr));
  }

  /// Section Widget
  Widget _buildInputFieldWithName() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_account_name".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: controller.nameController,
          hintText: "lbl_anne_christion".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputFieldWithDateOfBirth() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_date_of_birth".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: controller.dateOfBirthController,
          hintText: "lbl_11_01_1997".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputFieldWithAddress() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_address".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: controller.addressController,
          hintText: "msg_new_south_wales".tr)
    ]);
  }

  /// Section Widget
  Widget _buildInputFieldWithMobileNumber() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_mobile_number".tr, style: theme.textTheme.titleSmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: controller.mobileNumberController,
          hintText: "lbl_9999_999_999".tr,
          textInputAction: TextInputAction.done)
    ]);
  }

  /// Section Widget
  Widget _buildCompleteButton() {
    return CustomElevatedButton(
        text: "lbl_complete".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 44.v),
        onPressed: () {
          onTapCompleteButton();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapBtnIcon() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapCompleteButton() {
    Get.toNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
