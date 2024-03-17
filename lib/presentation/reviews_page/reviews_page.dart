import 'package:almohsen_s_application15/widgets/custom_rating_bar.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/reviews_controller.dart';
import 'models/reviews_model.dart';

// ignore_for_file: must_be_immutable
class ReviewsPage extends StatelessWidget {
  ReviewsPage({Key? key}) : super(key: key);

  ReviewsController controller = Get.put(ReviewsController(ReviewsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(children: [
                  SizedBox(height: 23.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(children: [
                        Text("lbl_4_8".tr,
                            style: CustomTextStyles.headlineMediumBold),
                        SizedBox(height: 11.v),
                        CustomRatingBar(
                            initialRating: 4,
                            itemSize: 20,
                            color: appTheme.amber50001),
                        SizedBox(height: 11.v),
                        Text("msg_based_on_1_024_reviews".tr,
                            style: CustomTextStyles.bodyMediumGray500),
                        SizedBox(height: 11.v),
                        _buildFrameRow1(),
                        SizedBox(height: 6.v),
                        _buildFrameRow2(),
                        SizedBox(height: 8.v),
                        _buildFrameRow3(),
                        SizedBox(height: 5.v),
                        _buildFrameRow4(),
                        SizedBox(height: 4.v),
                        _buildFrameRow5(),
                        SizedBox(height: 23.v),
                        _buildFrameRow6(),
                        SizedBox(height: 14.v),
                        _buildFrameRow7(),
                        SizedBox(height: 41.v),
                        CustomElevatedButton(
                            text: "lbl_write_a_review".tr,
                            onPressed: () {
                              onTapWriteAReview();
                            })
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildFrameRow1() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("lbl_excellent".tr, style: CustomTextStyles.bodyMediumGray500),
      Padding(
          padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
          child: Container(
              height: 4.v,
              width: 196.h,
              decoration: BoxDecoration(
                  color: appTheme.gray200,
                  borderRadius: BorderRadius.circular(2.h)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.h),
                  child: LinearProgressIndicator(
                      value: 0.93,
                      backgroundColor: appTheme.gray200,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.secondaryContainer)))))
    ]);
  }

  /// Section Widget
  Widget _buildFrameRow2() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("lbl_good".tr, style: CustomTextStyles.bodyMediumGray500),
      Padding(
          padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
          child: Container(
              height: 4.v,
              width: 196.h,
              decoration: BoxDecoration(
                  color: appTheme.gray200,
                  borderRadius: BorderRadius.circular(2.h)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.h),
                  child: LinearProgressIndicator(
                      value: 0.32,
                      backgroundColor: appTheme.gray200,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(appTheme.green500)))))
    ]);
  }

  /// Section Widget
  Widget _buildFrameRow3() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_average".tr, style: CustomTextStyles.bodyMediumGray500),
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 10.v),
              child: Container(
                  height: 4.v,
                  width: 196.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray200,
                      borderRadius: BorderRadius.circular(2.h)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(2.h),
                      child: LinearProgressIndicator(
                          value: 0.17,
                          backgroundColor: appTheme.gray200,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              appTheme.amber400)))))
        ]);
  }

  /// Section Widget
  Widget _buildFrameRow4() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("lbl_bellow_average".tr,
              style: CustomTextStyles.bodyMediumGray500),
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 9.v),
              child: Container(
                  height: 4.v,
                  width: 196.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray200,
                      borderRadius: BorderRadius.circular(2.h)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(2.h),
                      child: LinearProgressIndicator(
                          value: 0.09,
                          backgroundColor: appTheme.gray200,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              appTheme.orange700)))))
        ]);
  }

  /// Section Widget
  Widget _buildFrameRow5() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("lbl_poor".tr, style: CustomTextStyles.bodyMediumGray500),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 8.v),
          child: Container(
              height: 4.v,
              width: 196.h,
              decoration: BoxDecoration(
                  color: appTheme.gray200,
                  borderRadius: BorderRadius.circular(2.h)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(2.h),
                  child: LinearProgressIndicator(
                      value: 0.04,
                      backgroundColor: appTheme.gray200,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(appTheme.redA400)))))
    ]);
  }

  /// Section Widget
  Widget _buildFrameRow6() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse533x33,
              height: 33.adaptSize,
              width: 33.adaptSize,
              radius: BorderRadius.circular(16.h),
              margin: EdgeInsets.only(top: 1.v, bottom: 75.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_ariana_peter".tr,
                                style: theme.textTheme.bodyMedium),
                            CustomRatingBar(
                                initialRating: 4,
                                itemSize: 14,
                                color: appTheme.amber50001)
                          ]),
                      Padding(
                          padding: EdgeInsets.only(top: 9.v, bottom: 4.v),
                          child: Text("lbl_1_day_ago".tr,
                              style: CustomTextStyles.bodyMediumGray500))
                    ]),
                SizedBox(height: 10.v),
                Container(
                    width: 295.h,
                    margin: EdgeInsets.only(right: 7.h),
                    child: Text("msg_it_is_a_long_established2".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray500
                            .copyWith(height: 1.50)))
              ]))
        ]);
  }

  /// Section Widget
  Widget _buildFrameRow7() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse533x33,
              height: 33.adaptSize,
              width: 33.adaptSize,
              radius: BorderRadius.circular(16.h),
              margin: EdgeInsets.only(top: 1.v, bottom: 75.v)),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_ariana_peter".tr,
                                style: theme.textTheme.bodyMedium),
                            CustomRatingBar(
                                initialRating: 4,
                                itemSize: 14,
                                color: appTheme.amber50001)
                          ]),
                      Padding(
                          padding: EdgeInsets.only(top: 9.v, bottom: 4.v),
                          child: Text("lbl_1_day_ago".tr,
                              style: CustomTextStyles.bodyMediumGray500))
                    ]),
                SizedBox(height: 10.v),
                Container(
                    width: 295.h,
                    margin: EdgeInsets.only(right: 7.h),
                    child: Text("msg_it_is_a_long_established2".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray500
                            .copyWith(height: 1.50)))
              ]))
        ]);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  onTapWriteAReview() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }
}
