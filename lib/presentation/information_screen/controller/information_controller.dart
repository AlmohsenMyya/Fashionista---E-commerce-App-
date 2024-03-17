import '../../../core/app_export.dart';
import '../models/information_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the InformationScreen.
///
/// This class manages the state of the InformationScreen, including the
/// current informationModelObj
class InformationController extends GetxController {
  var id = Get.arguments[NavigationArgs.id];

  TextEditingController nameController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  Rx<InformationModel> informationModelObj = InformationModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    dateOfBirthController.dispose();
    addressController.dispose();
    mobileNumberController.dispose();
  }
}
