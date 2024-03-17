import '../models/chipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';

// ignore: must_be_immutable
class ChipviewItemWidget extends StatelessWidget {
  ChipviewItemWidget(
    this.chipviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChipviewItemModel chipviewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 8.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewItemModelObj.tabs!.value,
          style: TextStyle(
            color: (chipviewItemModelObj.isSelected?.value ?? false)
                ? appTheme.whiteA700
                : theme.colorScheme.primary,
            fontSize: 14.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: (chipviewItemModelObj.isSelected?.value ?? false),
        backgroundColor: appTheme.gray200,
        selectedColor: theme.colorScheme.primary,
        shape: (chipviewItemModelObj.isSelected?.value ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  18.h,
                ),
              ),
        onSelected: (value) {
          chipviewItemModelObj.isSelected!.value = value;
        },
      ),
    );
  }
}
