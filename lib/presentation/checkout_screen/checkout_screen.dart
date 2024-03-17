import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/widgets/custom_icon_button.dart';
import 'widgets/checkoutlist_item_widget.dart';
import 'models/checkoutlist_item_model.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/checkout_controller.dart';

class CheckoutScreen extends GetWidget<CheckoutController> {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("msg_delivery_address".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 9.v),
                      Row(children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            child: CustomIconButton(
                                height: 42.adaptSize,
                                width: 42.adaptSize,
                                padding: EdgeInsets.all(9.h),
                                decoration: IconButtonStyleHelper.outlineGray,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgLinkedin))),
                        Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_address".tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 2.v),
                                  Text("lbl_nsw_australia".tr,
                                      style: CustomTextStyles.bodyMediumLime900)
                                ]))
                      ]),
                      SizedBox(height: 25.v),
                      Text("lbl_payment_mathod".tr,
                          style: theme.textTheme.titleMedium),
                      SizedBox(height: 9.v),
                      _buildCheckoutList(),
                      SizedBox(height: 63.v),
                      _buildCheckoutRow(),
                      SizedBox(height: 15.v),
                      CustomElevatedButton(
                          text: "lbl_pay_now".tr,
                          onPressed: () {
                            onTapPayNow();
                          }),
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
        title: AppbarSubtitleOne(text: "lbl_checkout".tr));
  }

  /// Section Widget
  Widget _buildCheckoutList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 8.v);
        },
        itemCount:
            controller.checkoutModelObj.value.checkoutlistItemList.value.length,
        itemBuilder: (context, index) {
          CheckoutlistItemModel model = controller
              .checkoutModelObj.value.checkoutlistItemList.value[index];
          return CheckoutlistItemWidget(model);
        }));
  }

  /// Section Widget
  Widget _buildCheckoutRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("lbl_total".tr, style: CustomTextStyles.titleMediumGray500),
      RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "lbl".tr,
                style: CustomTextStyles.titleMediumff946021SemiBold),
            TextSpan(
                text: "lbl_144_942".tr,
                style: CustomTextStyles.titleMediumff000000)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the completeScreen when the action is triggered.
  onTapPayNow() {
    Get.toNamed(
      AppRoutes.completeScreen,
    );
  }
}
