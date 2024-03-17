import 'package:almohsen_s_application15/presentation/home_tab_container_page/home_tab_container_page.dart';
import 'package:almohsen_s_application15/presentation/search_page/search_page.dart';
import 'package:almohsen_s_application15/presentation/my_cart_page/my_cart_page.dart';
import 'package:almohsen_s_application15/presentation/profile_page/profile_page.dart';
import 'package:almohsen_s_application15/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:almohsen_s_application15/core/app_export.dart';
import 'controller/home_container_controller.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  const HomeContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homeTabContainerPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeTabContainerPage;
      case BottomBarEnum.Searchgray500:
        return AppRoutes.searchPage;
      case BottomBarEnum.Shoppingcart:
        return AppRoutes.myCartPage;
      case BottomBarEnum.Personoutline:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeTabContainerPage:
        return HomeTabContainerPage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.myCartPage:
        return MyCartPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
