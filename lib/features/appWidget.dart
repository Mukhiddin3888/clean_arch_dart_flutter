import 'package:flutter/material.dart';

import '../router/app_routes.dart';


class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean architecture App',
      debugShowCheckedModeBanner: false,
      // theme: lightTheme,
      // darkTheme: darkTheme,
      initialRoute: Routes.initial,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      navigatorKey: rootNavigatorKey,
    );
  }
}

