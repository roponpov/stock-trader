import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/icon_constant.dart';
import '../../viewmodels/sign_up_view_model.dart';
import '../../widgets/divider_text_widget.dart';
import '../../widgets/social_login_button_widget.dart';
import '../../widgets/status_app_bar_widget.dart';
import '../../widgets/text_form_field_widget.dart';

class SignUpView extends GetView<SignUpViewModel> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return StatusAppBarWidget(
      brightness: Brightness.light,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: ()=> FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ////////////////////////
                  //// Header Section ////
                  ////////////////////////
                  const SizedBox(height: 36),
                  Image.asset(
                    IconConstant.singleAppIcon,
                    height: 50,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'join_stock_trader'.tr,
                    style: theme.textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'embark_on_your_investment_journey_with_a_single_dollar'.tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 20),

                  //////////////////////
                  //// Form Section ////
                  //////////////////////
                  Form(
                    key: controller.formKey,
                    child: Column(
                      spacing: 16,
                      children: [
                        TextFormFieldWidget(
                          controller: controller.usernameController,
                          hintText: 'username'.tr,
                          textInputAction: TextInputAction.next,
                          validator: controller.validateUsername,
                        ),
                        TextFormFieldWidget(
                          controller: controller.emailController,
                          hintText: 'email'.tr,
                          textInputAction: TextInputAction.next,
                          validator: controller.validateEmail,
                        ),
                        Obx(() {
                          final obscure = controller.obscurePassword.value;
                          return TextFormFieldWidget(
                            controller: controller.passwordController,
                            hintText: 'password'.tr,
                            textInputAction: TextInputAction.done,
                            obscureText: obscure,
                            suffixIcon: IconButton(
                              onPressed: () => controller.togglePassword(),
                              icon: Icon(obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,size: 20),
                            ),
                            suffixIconColor: theme.colorScheme.outline,
                            validator: controller.validatePassword,
                            onFieldSubmitted: (_) => controller.submit(),
                          );
                        },)
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all<Color>(
                            theme.colorScheme.primary),
                      ),
                      onPressed: () => controller.submit(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'continue'.tr,
                          style: theme.textTheme.labelLarge
                              ?.copyWith(color: theme.colorScheme.onPrimary),
                        ),
                      ),
                    ),
                  ),

                  ////////////////////////
                  //// Divide Section ////
                  ////////////////////////
                  const SizedBox(height: 25),
                  DividerTextWidget('or_continue_with'.tr),
                  const SizedBox(height: 25),

                  //////////////////////////////
                  //// Social Login Section ////
                  //////////////////////////////
                  SocialLoginButtonWidget(
                    theme: theme,
                    title: 'continue_with_google'.tr,
                    logo: IconConstant.googleLogoIcon,
                  ),
                  const SizedBox(height: 12),
                  SocialLoginButtonWidget(
                    theme: theme,
                    title: 'continue_with_apple'.tr,
                    logo: IconConstant.appleLogoIcon,
                  ),
                  const SizedBox(height: 25),

                  ////////////////////////
                  //// Footer Section ////
                  ////////////////////////
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 5,
                    children: [
                      Text(
                        'already_have_an_account'.tr,
                        style: theme.textTheme.labelLarge?.copyWith(
                            color: theme.colorScheme.outline
                        ),
                      ),
                      Text(
                        'sign_in'.tr,
                        style: theme.textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.primary
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
