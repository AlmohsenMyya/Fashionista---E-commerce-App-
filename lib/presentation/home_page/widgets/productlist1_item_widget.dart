import '../models/productlist1_item_model.dart';
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class Productlist1ItemWidget extends StatelessWidget {
  Productlist1ItemWidget(
    this.productlist1ItemModelObj, {
    Key? key,
    this.onTapCard,
  }) : super(
          key: key,
        );

  Productlist1ItemModel productlist1ItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 164.h,
      child: GestureDetector(
        onTap: () {
          onTapCard!.call();
        },
        child: Column(
          children: [
            SizedBox(
              height: 235.v,
              width: 164.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: productlist1ItemModelObj.blackJacket!.value,
                      height: 235.v,
                      width: 164.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClock,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 12.v,
                      right: 12.h,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Obx(
              () => Text(
                productlist1ItemModelObj.casualJeansShoes!.value,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            SizedBox(height: 5.v),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl".tr,
                    style: CustomTextStyles.titleMediumff946021SemiBold,
                  ),
                  TextSpan(
                    text: "lbl_246_002".tr,
                    style: CustomTextStyles.titleMediumff000000,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
