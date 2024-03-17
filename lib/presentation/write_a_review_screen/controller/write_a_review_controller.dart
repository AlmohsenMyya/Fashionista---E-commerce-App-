import '../../../core/app_export.dart';
import '../models/write_a_review_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WriteAReviewScreen.
///
/// This class manages the state of the WriteAReviewScreen, including the
/// current writeAReviewModelObj
class WriteAReviewController extends GetxController {
  TextEditingController inputFieldsController = TextEditingController();

  Rx<WriteAReviewModel> writeAReviewModelObj = WriteAReviewModel().obs;

  @override
  void onClose() {
    super.onClose();
    inputFieldsController.dispose();
  }
}
