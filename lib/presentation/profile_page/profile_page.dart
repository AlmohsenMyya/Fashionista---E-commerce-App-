import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle.dart';
import 'package:almohsen_s_application15/widgets/custom_icon_button.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/profile_controller.dart';
import 'models/profile_model.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(children: [
                  _buildProfileAppBar(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 23.v),
                      child: Column(children: [
                        _buildStickyNoteTwo(
                            stickyNoteImage:
                                ImageConstant.imgPersonOutlinePrimary,
                            transactionHistoryText: "lbl_personal_data".tr),
                        SizedBox(height: 15.v),
                        _buildStickyNoteTwo(
                            stickyNoteImage: ImageConstant.imgStickyNote2,
                            transactionHistoryText:
                                "msg_transaction_history".tr),
                        SizedBox(height: 15.v),
                        _buildStickyNoteTwo(
                            stickyNoteImage: ImageConstant.imgTelevisionPrimary,
                            transactionHistoryText: "lbl_discount_code".tr,
                            onTapStickyNoteTwo: () {
                              onTapStickyNoteTwo();
                            }),
                        SizedBox(height: 15.v),
                        _buildStickyNoteTwo(
                            stickyNoteImage: ImageConstant.imgSearchPrimary,
                            transactionHistoryText: "lbl_settings".tr,
                            onTapStickyNoteTwo: () {
                              onTapStickyNoteTwo1();
                            }),
                        SizedBox(height: 109.v),
                        CustomElevatedButton(text: "lbl_logout".tr),
                        SizedBox(height: 5.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildProfileAppBar() {
    return SizedBox(
        height: 225.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              height: 113.v,
              centerTitle: true,
              title: AppbarSubtitle(
                  text: "lbl_profile".tr,
                  margin: EdgeInsets.only(top: 11.v, bottom: 74.v)),
              styleType: Style.bgFill),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 113.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
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
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIconWhiteA700))
                        ])),
                    SizedBox(height: 5.v),
                    Text("lbl_anne_christion".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 1.v),
                    Text("lbl_xyz_gmail_com".tr,
                        style: CustomTextStyles.bodyMediumGray500)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildStickyNoteTwo({
    required String stickyNoteImage,
    required String transactionHistoryText,
    Function? onTapStickyNoteTwo,
  }) {
    return GestureDetector(
        onTap: () {
          onTapStickyNoteTwo!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: stickyNoteImage,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 3.v, bottom: 2.v)),
                  Padding(
                      padding: EdgeInsets.only(left: 24.h, top: 6.v),
                      child: Text(transactionHistoryText,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(color: theme.colorScheme.primary))),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      margin: EdgeInsets.only(top: 6.v, bottom: 7.v))
                ])));
  }

  /// Navigates to the discountItemsScreen when the action is triggered.
  onTapStickyNoteTwo() {
    Get.toNamed(
      AppRoutes.discountItemsScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapStickyNoteTwo1() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
