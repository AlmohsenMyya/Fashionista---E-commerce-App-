import 'package:almohsen_s_application15/widgets/custom_icon_button.dart';
import 'models/sizechipview_item_model.dart';
import '../product_view_screen/widgets/sizechipview_item_widget.dart';
import 'package:almohsen_s_application15/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/product_view_controller.dart';

class ProductViewScreen extends GetWidget<ProductViewController> {
  const ProductViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 854.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgProduct,
                              height: 451.v,
                              width: 375.h,
                              alignment: Alignment.topCenter),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.all(16.h),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL30),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildProductRow(),
                                        SizedBox(height: 23.v),
                                        Text("lbl_select_size".tr,
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 8.v),
                                        _buildSizeChipView(),
                                        SizedBox(height: 23.v),
                                        Text("lbl_color".tr,
                                            style: theme.textTheme.titleMedium),
                                        SizedBox(height: 8.v),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFrame1035,
                                            height: 50.v,
                                            width: 330.h,
                                            radius: BorderRadius.circular(8.h)),
                                        SizedBox(height: 23.v),
                                        _buildReviewsRow(),
                                        SizedBox(height: 11.v),
                                        Row(children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgStar6,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              radius:
                                                  BorderRadius.circular(1.h)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text(
                                                  "msg_4_8_1_024_reviews".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumGray500))
                                        ]),
                                        SizedBox(height: 24.v),
                                        _buildAddToCartRow(),
                                        SizedBox(height: 14.v)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildProductRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
          child: Text("lbl_black_jacket".tr,
              style: CustomTextStyles.titleLargeSemiBold)),
      CustomIconButton(
          height: 42.adaptSize,
          width: 42.adaptSize,
          padding: EdgeInsets.all(9.h),
          decoration: IconButtonStyleHelper.outlineGray,
          child: CustomImageView(imagePath: ImageConstant.imgIconPrimary42x42))
    ]);
  }

  /// Section Widget
  Widget _buildSizeChipView() {
    return Obx(() => Wrap(
        runSpacing: 20.v,
        spacing: 20.h,
        children: List<Widget>.generate(
            controller.productViewModelObj.value.sizechipviewItemList.value
                .length, (index) {
          SizechipviewItemModel model = controller
              .productViewModelObj.value.sizechipviewItemList.value[index];
          return SizechipviewItemWidget(model);
        })));
  }

  /// Section Widget
  Widget _buildReviewsRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("lbl_reviews".tr, style: theme.textTheme.titleMedium),
      GestureDetector(
          onTap: () {
            onTapTxtSeeAll();
          },
          child: Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: Text("lbl_see_all".tr,
                  style: CustomTextStyles.titleSmallLime900)))
    ]);
  }

  /// Section Widget
  Widget _buildAddToCartRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 10.v, bottom: 11.v),
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl".tr, style: CustomTextStyles.titleLargeff946021),
                TextSpan(
                    text: "lbl_134_982".tr,
                    style: CustomTextStyles.titleLargeff000000)
              ]),
              textAlign: TextAlign.left)),
      CustomElevatedButton(width: 170.h, text: "lbl_add_to_cart".tr)
    ]);
  }

  /// Navigates to the reviewsTabContainerScreen when the action is triggered.
  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.reviewsTabContainerScreen,
    );
  }
}
