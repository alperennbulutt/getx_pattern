import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/src/routes/app_pages.dart';
import 'package:getx_pattern/src/translations/app_translations.dart';

import 'src/ui/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    locale: const Locale('pt', 'BR'),
    translationsKeys: AppTranslation.translations,
  ));
}
