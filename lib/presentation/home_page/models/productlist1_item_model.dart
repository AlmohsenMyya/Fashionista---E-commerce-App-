import '../../../core/app_export.dart';

/// This class is used in the [productlist1_item_widget] screen.
class Productlist1ItemModel {
  Productlist1ItemModel({
    this.blackJacket,
    this.casualJeansShoes,
    this.id,
  }) {
    blackJacket = blackJacket ?? Rx(ImageConstant.imgUnsplashEmlkhdeydhg2);
    casualJeansShoes = casualJeansShoes ?? Rx("Black Jacket");
    id = id ?? Rx("");
  }

  Rx<String>? blackJacket;

  Rx<String>? casualJeansShoes;

  Rx<String>? id;
}
