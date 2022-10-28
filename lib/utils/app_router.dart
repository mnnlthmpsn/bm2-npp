import 'package:bm24_ddss/features/load_screens.dart';

import 'package:bm24_ddss/utils/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  static Route<dynamic> generateRoute(settings) {
    switch (settings.name) {
      case RouteConstants.kDashboard:
        return animatePage(dashboardOutlet());
      default:
        return animatePage(Text(''));
    }
  }

  static PageTransition animatePage(Widget child) {
    return PageTransition(
        child: child,
        type: PageTransitionType.fade,
        duration: const Duration(microseconds: 250),
        reverseDuration: const Duration(microseconds: 250));
  }
}
