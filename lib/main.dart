import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queue_app/features/appWidget.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(ScreenUtilInit(
    designSize: const Size(375, 812),
    builder: (context, child) {
      return EasyLocalization(
        supportedLocales: const [
          Locale('uz', 'UZ'),
          Locale('ru', 'RU'),
          Locale('en', 'EN'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('uz', 'UZ'),
        child: const AppWidget(),
      );
    },
  ));
}
