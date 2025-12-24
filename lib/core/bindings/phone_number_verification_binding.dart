import 'package:get/get.dart';
import '../../viewmodels/phone_number_verification_view_model.dart';

class PhoneNumberVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneNumberVerificationViewModel>(() => PhoneNumberVerificationViewModel());
  }
}