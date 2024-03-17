import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/settings_controller.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrameRow1(),
                      SizedBox(height: 26.v),
                      Text("lbl_settings".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 9.v),
                      _buildFrameRow2(),
                      SizedBox(height: 16.v),
                      _buildFrameRow(
                          timerImage: ImageConstant.imgTimeline,
                          orderStatusText: "lbl_tracking_order".tr,
                          onTapFrameRow: () {
                            onTapFrameRow1();
                          }),
                      SizedBox(height: 16.v),
                      _buildFrameRow(
                          timerImage: ImageConstant.imgTimer,
                          orderStatusText: "lbl_order_status".tr,
                          onTapFrameRow: () {
                            onTapFrameRow2();
                          }),
                      SizedBox(height: 16.v),
                      _buildFrameRow(
                          timerImage: ImageConstant.imgTranslate,
                          orderStatusText: "lbl_language".tr),
                      SizedBox(height: 16.v),
                      _buildFrameRow(
                          timerImage: ImageConstant.imgQuestionAnswer,
                          orderStatusText: "lbl_faqs".tr),
                      SizedBox(height: 5.v)
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
        title: AppbarSubtitleOne(text: "lbl_settings".tr));
  }

  /// Section Widget
  Widget _buildFrameRow1() {
    return Container(
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse45,
              height: 64.adaptSize,
              width: 64.adaptSize,
              radius: BorderRadius.circular(32.h)),
          Padding(
              padding: EdgeInsets.only(left: 16.h, top: 6.v, bottom: 6.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_anne_christion".tr,
                        style: CustomTextStyles.bodyLarge18),
                    SizedBox(height: 3.v),
                    Text("lbl_premium_user".tr,
                        style: CustomTextStyles.bodyMediumGray500)
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 24.v))
        ]));
  }

  /// Section Widget
  Widget _buildFrameRow2() {
    return GestureDetector(
        onTap: () {
          onTapFrameRow();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgNotificationsActive,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text("lbl_notifications".tr,
                      style: theme.textTheme.bodyLarge)),
              Spacer(),
              Obx(() => CustomSwitch(
                  margin: EdgeInsets.symmetric(vertical: 4.v),
                  value: controller.isSelectedSwitch.value,
                  onChange: (value) {
                    controller.isSelectedSwitch.value = value;
                  }))
            ])));
  }

  /// Common widget
  Widget _buildFrameRow({
    required String timerImage,
    required String orderStatusText,
    Function? onTapFrameRow,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFrameRow!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(children: [
              CustomImageView(
                  imagePath: timerImage,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(orderStatusText,
                      style: theme.textTheme.bodyLarge!
                          .copyWith(color: theme.colorScheme.primary))),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 4.v))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the notificationScreen when the action is triggered.
  onTapFrameRow() {
    Get.toNamed(
      AppRoutes.notificationScreen,
    );
  }

  /// Navigates to the trackingOrderScreen when the action is triggered.
  onTapFrameRow1() {
    Get.toNamed(
      AppRoutes.trackingOrderScreen,
    );
  }

  /// Navigates to the orderStatusScreen when the action is triggered.
  onTapFrameRow2() {
    Get.toNamed(
      AppRoutes.orderStatusScreen,
    );
  }
}
