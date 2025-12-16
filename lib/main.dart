import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stock_trader/core/routes/app_pages.dart';
import 'package:stock_trader/core/routes/app_routes.dart';
import 'package:stock_trader/core/themes/app_theme.dart';
import 'package:stock_trader/core/translations/app_translations.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stock Trader',
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
        // initialBinding: ,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      translations: AppTranslations(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
