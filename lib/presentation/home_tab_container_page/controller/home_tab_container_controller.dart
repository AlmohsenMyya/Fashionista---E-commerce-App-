import '../../../core/app_export.dart';
import '../models/home_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomeTabContainerPage.
///
/// This class manages the state of the HomeTabContainerPage, including the
/// current homeTabContainerModelObj
class HomeTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  HomeTabContainerController(this.homeTabContainerModelObj);

  Rx<HomeTabContainerModel> homeTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));
}
