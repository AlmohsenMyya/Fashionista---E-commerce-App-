import '../../../core/app_export.dart';
import 'popularitems_item_model.dart';

/// This class defines the variables used in the [popular_items_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PopularItemsModel {
  Rx<List<PopularitemsItemModel>> popularitemsItemList = Rx([
    PopularitemsItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg4.obs,
        casualJeansShoes: "Black Jacket".obs),
    PopularitemsItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg5.obs,
        casualJeansShoes: "Black Jacket".obs),
    PopularitemsItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg6.obs,
        casualJeansShoes: "Black Jacket".obs),
    PopularitemsItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg7.obs,
        casualJeansShoes: "Black Jacket".obs)
  ]);
}
