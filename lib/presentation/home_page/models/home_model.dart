import '../../../core/app_export.dart';
import 'productlist_item_model.dart';
import 'productlist1_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<ProductlistItemModel>> productlistItemList = Rx([
    ProductlistItemModel(
        casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg.obs,
        casualJeansShoes1: "Casual Jeans Shoes".obs),
    ProductlistItemModel(
        casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg235x164.obs,
        casualJeansShoes1: "Casual Jeans Shoes".obs),
    ProductlistItemModel(
        casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg1.obs,
        casualJeansShoes1: "Casual Jeans Shoes".obs)
  ]);

  Rx<List<Productlist1ItemModel>> productlist1ItemList = Rx([
    Productlist1ItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg2.obs,
        casualJeansShoes: "Black Jacket".obs),
    Productlist1ItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg3.obs,
        casualJeansShoes: "Casual Jeans Shoes".obs),
    Productlist1ItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg2.obs,
        casualJeansShoes: "Black Jacket".obs)
  ]);
}
