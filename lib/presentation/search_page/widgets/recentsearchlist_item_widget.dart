import '../models/recentsearchlist_item_model.dart';
import '../controller/search_controller.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:almohsen_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class RecentsearchlistItemWidget extends StatelessWidget {
  RecentsearchlistItemWidget(
    this.recentsearchlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentsearchlistItemModel recentsearchlistItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 58.h,
      child: Obx(
        () => CustomImageView(
          imagePath: recentsearchlistItemModelObj.unsplashQnUURoX!.value,
          height: 58.adaptSize,
          width: 58.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
      ),
    );
  }
}
