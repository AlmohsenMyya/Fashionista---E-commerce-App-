import '../models/productlist2_item_model.dart';
import '../controller/search_controller.dart';
import 'package:almohsen_s_application15/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:almohsen_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class Productlist2ItemWidget extends StatelessWidget {
  Productlist2ItemWidget(
    this.productlist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist2ItemModel productlist2ItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: productlist2ItemModelObj.premiumWatch!.value,
                height: 58.adaptSize,
                width: 58.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 6.v,
                bottom: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      productlist2ItemModelObj.premiumWatch1!.value,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  CustomRatingBar(
                    ignoreGestures: true,
                    initialRating: 5,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 21.v),
            ),
          ],
        ),
      ),
    );
  }
}
