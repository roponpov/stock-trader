import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpViewModel extends GetxController{
  final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final RxBool obscurePassword = true.obs;
  final RxBool isLoading = false.obs;

  void togglePassword(){
    obscurePassword.value = !obscurePassword.value;
  }

  String? validateUsername(String? v){
    final value = (v ?? '').trim();
    if(value.isEmpty) return 'username_is_required'.tr;
    if(value.length < 3) return 'min_3_characters'.tr;
    return null;
  }

  String? validateEmail(String? v) {
    final value = (v ?? '').trim();
    if (value.isEmpty) return 'email_is_required'.tr;
    final ok = RegExp(r'^\S+@\S+\.\S+$').hasMatch(value);
    if (!ok) return 'enter_a_valid_email'.tr;
    return null;
  }

  String? validatePassword(String? v) {
    final value = v ?? '';
    if (value.isEmpty) return 'password_is_required'.tr;
    if (value.length < 8) return 'Min 8 characters'.tr;
    return null;
  }

  Future<void> submit() async {
    final valid = formKey.currentState?.validate() ?? false;
    if (!valid) return;

    isLoading.value = true;
    try {
      FocusManager.instance.primaryFocus?.unfocus();

      // TODO: call API / repository
      // await authRepo.signUp(...)

    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}