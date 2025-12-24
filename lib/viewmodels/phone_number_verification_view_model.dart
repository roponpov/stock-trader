import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../models/country_model.dart';

class PhoneNumberVerificationViewModel extends GetxController {
  var numberPhoneTextEditController = TextEditingController();
  Rx<CountryModel> selectedNumberPhoneExtension = CountryModel.countries.first.obs;

  void switchNumberPhoneExtension(CountryModel value) => selectedNumberPhoneExtension.value = value;

  @override
  void onInit() {
    super.onInit();
    numberPhoneTextEditController.addListener(_handleUnFocus);
  }

  void _handleUnFocus() {
    if(numberPhoneTextEditController.text.length == 11){
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  @override
  void onClose() {
    numberPhoneTextEditController.dispose();
    super.onClose();
  }

}