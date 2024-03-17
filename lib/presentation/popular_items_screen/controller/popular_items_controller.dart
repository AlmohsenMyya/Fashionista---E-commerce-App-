import '../../../core/app_export.dart';
import '../models/popular_items_model.dart';

/// A controller class for the PopularItemsScreen.
///
/// This class manages the state of the PopularItemsScreen, including the
/// current popularItemsModelObj
class PopularItemsController extends GetxController {
  Rx<PopularItemsModel> popularItemsModelObj = PopularItemsModel().obs;
}
