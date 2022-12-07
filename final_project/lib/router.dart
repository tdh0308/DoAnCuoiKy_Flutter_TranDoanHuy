import 'package:final_project/pages/root_app.dart';
import 'package:final_project/pages/today_target_detail_page.dart';
import 'package:final_project/pages/Onboard/Onboard1.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings setting) {
  final Map<String, dynamic> args = new Map<String, dynamic>();

  switch (setting.name) {
    case '/root_app':
      return MaterialPageRoute(builder: (context) => RootApp());
    case '/onboard1':
      return MaterialPageRoute(builder: (context) => Onboard1());
    case '/today_target_detail':
      return MaterialPageRoute(builder: (context) => TodayTargetDetailPage());
    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
                body: Center(),
              ));
  }
}
