import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/icon_constant.dart';
import '../../widgets/status_app_bar_widget.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return StatusAppBarWidget(
      brightness: Brightness.light,
      child: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              SizedBox(
                height: 35,
                child: Image.asset(
                  IconConstant.singleAppIcon,
                ),
              ),
              Text(
                'app_name'.tr,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
