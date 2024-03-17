import 'package:almohsen_s_application15/widgets/app_bar/custom_app_bar.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:almohsen_s_application15/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/mycartlist_item_widget.dart';
import 'models/mycartlist_item_model.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/my_cart_controller.dart';
import 'models/my_cart_model.dart';

// ignore_for_file: must_be_immutable
class MyCartPage extends StatelessWidget {
  MyCartPage({Key? key}) : super(key: key);

  MyCartController controller = Get.put(MyCartController(MyCartModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 23.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(children: [
                          _buildPromoCodeOrVouchersFrame(),
                          SizedBox(height: 24.v),
                          _buildMyCartList(),
                          SizedBox(height: 24.v),
                          _buildFeeDeliveryFrame(
                              feeDeliveryText: "lbl_subtotal".tr,
                              priceText: "lbl_134_94".tr),
                          SizedBox(height: 8.v),
                          _buildFeeDeliveryFrame(
                              feeDeliveryText: "lbl_fee_delivery".tr,
                              priceText: "lbl_10".tr),
                          SizedBox(height: 6.v),
                          _buildFeeDeliveryFrame(
                              feeDeliveryText: "lbl_total".tr,
                              priceText: "lbl_144_94".tr),
                          SizedBox(height: 39.v),
                          CustomElevatedButton(
                              text: "lbl_send_code2".tr,
                              onPressed: () {
                                onTapSendCode();
                              })
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
        title: AppbarSubtitleOne(text: "lbl_my_cart".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgShoppingBag,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildPromoCodeOrVouchersFrame() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("msg_promo_code_or_vourchers".tr,
          style: CustomTextStyles.bodyLarge18),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 5.v))
    ]);
  }

  /// Section Widget
  Widget _buildMyCartList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 24.v);
        },
        itemCount:
            controller.myCartModelObj.value.mycartlistItemList.value.length,
        itemBuilder: (context, index) {
          MycartlistItemModel model =
              controller.myCartModelObj.value.mycartlistItemList.value[index];
          return MycartlistItemWidget(model);
        }));
  }

  /// Common widget
  Widget _buildFeeDeliveryFrame({
    required String feeDeliveryText,
    required String priceText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(feeDeliveryText,
              style: CustomTextStyles.bodyLargeGray500_1
                  .copyWith(color: appTheme.gray500))),
      RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "lbl".tr,
                style: CustomTextStyles.titleMediumff946021SemiBold),
            TextSpan(
                text: "lbl_102".tr, style: CustomTextStyles.titleMediumff000000)
          ]),
          textAlign: TextAlign.left)
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowDown() {
    Get.back();
  }

  /// Navigates to the checkoutScreen when the action is triggered.
  onTapSendCode() {
    Get.toNamed(
      AppRoutes.checkoutScreen,
    );
  }
}
