import '../models/checkoutlist_item_model.dart';
import '../controller/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class CheckoutlistItemWidget extends StatelessWidget {
  CheckoutlistItemWidget(
    this.checkoutlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CheckoutlistItemModel checkoutlistItemModelObj;

  var controller = Get.find<CheckoutController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.v),
              decoration: AppDecoration.fillGray,
              child: Row(
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: checkoutlistItemModelObj.creditCard!.value,
                      height: 30.adaptSize,
                      width: 30.adaptSize,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 26.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                    child: Obx(
                      () => Text(
                        checkoutlistItemModelObj.creditCard1!.value,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 13.v,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }
}
