import '../../../core/app_export.dart';
import '../models/explore_shop_model.dart';

/// A controller class for the ExploreShopScreen.
///
/// This class manages the state of the ExploreShopScreen, including the
/// current exploreShopModelObj
class ExploreShopController extends GetxController {
  Rx<ExploreShopModel> exploreShopModelObj = ExploreShopModel().obs;
}
