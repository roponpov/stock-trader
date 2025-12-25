import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'show_country_picker.dart';
import '../../utils/phone_number_formatter_util.dart';
import '../../viewmodels/phone_number_verification_view_model.dart';
import '../../widgets/status_app_bar_widget.dart';

class PhoneNumberVerificationView extends GetView<PhoneNumberVerificationViewModel> {
  const PhoneNumberVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: StatusAppBarWidget(
        brightness: Brightness.light,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 16, bottom: 25),
                child: IconButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    side: WidgetStateProperty.all<BorderSide?>(
                      BorderSide(
                        color: theme.colorScheme.outline,
                      ),
                    ),
                    shape: WidgetStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  icon: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 12),
                child: Text(
                  'enter_your_phone_number'.tr,
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,bottom: 22),
                child: SizedBox(
                  width: size.width / 1.5,
                  child: Text(
                    'you_receive_a_4_digit_code_for_the_phone_number_verification'.tr,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.8)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => showCountryPicker(
                          context,
                          theme,
                          onValueChange: (value) {
                            controller.switchNumberPhoneExtension(value);
                          },
                        ),
                        borderRadius: BorderRadius.circular(10),
                        child: Obx(
                          ()=> Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                margin: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(controller.selectedNumberPhoneExtension.value.flag),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 5),
                                child: Text(
                                  controller.selectedNumberPhoneExtension.value.code,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),

                              const Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 26,
                        color: theme.colorScheme.outline,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: controller.numberPhoneTextEditController,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            PhoneNumberFormatterUtil(),
                            LengthLimitingTextInputFormatter(11),
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.only(left: 10),
                            hintText: 'enter_your_phone_number'.tr,
                            hintStyle: theme.textTheme.labelLarge?.copyWith(
                              color: theme.colorScheme.outline
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              const Spacer(),

              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'send_code'.tr,
                      style: theme.textTheme.labelLarge?.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


