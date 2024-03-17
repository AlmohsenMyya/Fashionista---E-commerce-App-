import '../../../core/app_export.dart';
import '../models/verification_code_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the VerificationCodeScreen.
///
/// This class manages the state of the VerificationCodeScreen, including the
/// current verificationCodeModelObj
class VerificationCodeController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<VerificationCodeModel> verificationCodeModelObj =
      VerificationCodeModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
