import '../models/sizechipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class SizechipviewItemWidget extends StatelessWidget {
  SizechipviewItemWidget(
    this.sizechipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SizechipviewItemModel sizechipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 8.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            sizechipviewItemModelObj.tabs!.value,
            style: TextStyle(
              color: (sizechipviewItemModelObj.isSelected?.value ?? false)
                  ? appTheme.whiteA700
                  : theme.colorScheme.primary,
              fontSize: 14.fSize,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          selected: (sizechipviewItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary,
          shape: (sizechipviewItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    7.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.gray200,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    7.h,
                  ),
                ),
          onSelected: (value) {
            sizechipviewItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
