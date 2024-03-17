import '../../../core/app_export.dart';
import '../models/sign_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {
  TextEditingController welcomeBackController = TextEditingController();

  TextEditingController signInPasswordController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    welcomeBackController.dispose();
    signInPasswordController.dispose();
  }
}
