import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:queue_app/features/appWidget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: AppWidget()));
}
