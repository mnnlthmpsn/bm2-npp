import 'dart:async';

import 'package:bm24_ddss/utils/app_router.dart';
import 'package:bm24_ddss/utils/app_theme.dart';
import 'package:bm24_ddss/utils/route_constants.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(() {
    runApp(MyApp());
  }, (error, stack) {
    print(error);
    print("An error occured here");
  });
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Title',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      navigatorKey: _navigatorKey,
      initialRoute: RouteConstants.kDashboard,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
