import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/core/helper/dpi_helper.dart';
import 'app/core/styles/car_theme.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      builder: (buildContext, widget) {
        handleFixSize(buildContext);
        return widget!;
      },
      theme: ThemeData(
        primaryColor: AppTheme.primaryColor,
        primaryColorDark: AppTheme.primaryDarkColor,
        primaryColorLight: AppTheme.primaryLightColor,
        // fontFamily: fontFamily,
        colorScheme: ColorScheme.fromSwatch(
                primarySwatch: generateMaterialColor(AppTheme.primaryColor))
            .copyWith(secondary: AppTheme.primaryColor)
            .copyWith(background: AppTheme.mainBackgroundColor),
      ),
    ),
  );
}
