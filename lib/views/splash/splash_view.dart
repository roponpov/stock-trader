import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/icon_constant.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            SizedBox(
              height: 32,
              child: Image.asset(
                IconConstant.singleAppIcon,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Text(
              'app_name'.tr,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
