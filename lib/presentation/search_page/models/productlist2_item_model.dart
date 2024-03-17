import '../../../core/app_export.dart';

/// This class is used in the [productlist2_item_widget] screen.
class Productlist2ItemModel {
  Productlist2ItemModel({
    this.premiumWatch,
    this.premiumWatch1,
    this.id,
  }) {
    premiumWatch = premiumWatch ?? Rx(ImageConstant.imgUnsplashJj0tls2rod4);
    premiumWatch1 = premiumWatch1 ?? Rx("Premium Watch");
    id = id ?? Rx("");
  }

  Rx<String>? premiumWatch;

  Rx<String>? premiumWatch1;

  Rx<String>? id;
}
