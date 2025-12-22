import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/icon_constant.dart';
import '../../widgets/status_app_bar_widget.dart';

class PhoneNumberVerificationView extends StatelessWidget {
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
                padding: const EdgeInsets.only(top: 5,left: 16,bottom: 25),
                child: IconButton(
                  onPressed: (){},
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
                padding: const EdgeInsets.only(left: 16,bottom: 12),
                child: Text(
                  'Enter your phone number',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: size.width / 1.5,
                  child: Text(
                    "You'll receive a 4 digit code for the phone number verification".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(IconConstant.cambodiaFlagLogo),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                      ),

                      Container(
                        width: 1,
                        height: 26,
                        color: Colors.red,
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
