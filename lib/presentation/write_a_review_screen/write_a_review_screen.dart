import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:almohsen_s_application15/widgets/custom_text_form_field.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/write_a_review_controller.dart';

class WriteAReviewScreen extends GetWidget<WriteAReviewController> {
  const WriteAReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 84.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgUnsplash8hqpxttomn0135x142,
                                height: 135.v,
                                width: 142.h,
                                radius: BorderRadius.circular(20.h)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, top: 11.v, bottom: 11.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_jacket".tr,
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 4.v),
                                      Text("lbl_black_jacket".tr,
                                          style: theme.textTheme.bodyLarge),
                                      SizedBox(height: 3.v),
                                      Text("lbl_size_xl".tr,
                                          style: CustomTextStyles
                                              .bodyMediumGray500),
                                      SizedBox(height: 4.v),
                                      RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl".tr,
                                                style: CustomTextStyles
                                                    .titleMediumff946021),
                                            TextSpan(
                                                text: "lbl_134_982".tr,
                                                style: CustomTextStyles
                                                    .titleMediumff000000SemiBold)
                                          ]),
                                          textAlign: TextAlign.left)
                                    ]))
                          ])),
                      SizedBox(height: 23.v),
                      Text("msg_add_photo_or_video".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 13.v),
                      _buildCloudUpload(),
                      SizedBox(height: 25.v),
                      Text("msg_write_yor_review".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 10.v),
                      CustomTextFormField(
                          controller: controller.inputFieldsController,
                          hintText: "msg_would_you_like_to".tr,
                          hintStyle: CustomTextStyles.bodyMediumGray500,
                          textInputAction: TextInputAction.done),
                      SizedBox(height: 9.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("msg_350_characters_remaining".tr,
                              style: CustomTextStyles.bodyMediumGray500)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildPostReview()));
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
        title: AppbarSubtitleOne(text: "lbl_write_a_review".tr));
  }

  /// Section Widget
  Widget _buildCloudUpload() {
    return DottedBorder(
        color: appTheme.gray200,
        padding: EdgeInsets.only(left: 2.h, top: 2.v, right: 2.h, bottom: 2.v),
        strokeWidth: 2.h,
        radius: Radius.circular(16),
        borderType: BorderType.RRect,
        dashPattern: [6, 6],
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 99.h, vertical: 21.v),
            decoration: AppDecoration.outlineGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgCloudUpload,
                      height: 50.adaptSize,
                      width: 50.adaptSize),
                  SizedBox(height: 13.v),
                  Text("msg_click_here_to_upload".tr,
                      style: CustomTextStyles.bodyMediumGray500)
                ])));
  }

  /// Section Widget
  Widget _buildPostReview() {
    return CustomElevatedButton(
        text: "lbl_post_review".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 39.v),
        onPressed: () {
          onTapPostReview();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the reviewsTabContainerScreen when the action is triggered.
  onTapPostReview() {
    Get.toNamed(
      AppRoutes.reviewsTabContainerScreen,
    );
  }
}
