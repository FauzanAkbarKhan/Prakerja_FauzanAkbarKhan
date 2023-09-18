import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/core/theme/app_theme.dart';
import 'app/data/providers/api.dart';
import 'app/routes/app_pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: surfaceColor,
  ));

  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 800),
      minTextAdapt: true,
      builder: (context, child) => GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: darkTheme,
        themeMode: ThemeMode.dark,
        initialBinding: BindingsBuilder(
          () async {
            Get.put(
              ApiProvider().init(rapidApiToken),
              permanent: true,
            );
          },
        ),
        builder: EasyLoading.init(),
      ),
    ),
  );
}
