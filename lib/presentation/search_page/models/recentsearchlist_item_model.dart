import '../../../core/app_export.dart';

/// This class is used in the [recentsearchlist_item_widget] screen.
class RecentsearchlistItemModel {
  RecentsearchlistItemModel({
    this.unsplashQnUURoX,
    this.id,
  }) {
    unsplashQnUURoX =
        unsplashQnUURoX ?? Rx(ImageConstant.imgUnsplashQnuUr0o5x8);
    id = id ?? Rx("");
  }

  Rx<String>? unsplashQnUURoX;

  Rx<String>? id;
}
