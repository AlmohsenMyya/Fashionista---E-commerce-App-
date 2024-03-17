import 'chipview_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [explore_shop_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreShopModel {
  Rx<List<ChipviewItemModel>> chipviewItemList =
      Rx(List.generate(21, (index) => ChipviewItemModel()));
}
