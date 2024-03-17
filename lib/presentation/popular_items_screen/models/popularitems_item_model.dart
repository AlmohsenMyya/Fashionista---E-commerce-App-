import '../../../core/app_export.dart';

/// This class is used in the [popularitems_item_widget] screen.
class PopularitemsItemModel {
  PopularitemsItemModel({
    this.blackJacket,
    this.casualJeansShoes,
    this.id,
  }) {
    blackJacket = blackJacket ?? Rx(ImageConstant.imgUnsplashEmlkhdeydhg4);
    casualJeansShoes = casualJeansShoes ?? Rx("Black Jacket");
    id = id ?? Rx("");
  }

  Rx<String>? blackJacket;

  Rx<String>? casualJeansShoes;

  Rx<String>? id;
}
