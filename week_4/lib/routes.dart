import 'package:flutter/material.dart';

import 'package:week_4/pages/blue_page.dart';
import 'package:week_4/pages/red_page.dart';
import 'package:week_4/pages/green_page.dart';
import 'package:week_4/argument_key.dart';

class Routes {
  Routes._(); //singleton

  static const root = '/';
  static const red = '/red';
  static const blue = '/blue';
  static const green = '/green';

  static MaterialPageRoute generateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) =>
            _buildPage(routeSettings.name, routeSettings.arguments));
  }

  static _buildPage(String name, Object arguments) {
    Map<String, dynamic> argumentsMap =
        arguments is Map<String, dynamic> ? arguments : Map();
    switch (name) {
      case blue:
        return BluePage(
          value: arguments ?? 0,
        );
        break;
      case red:
        return RedPage(
          value: argumentsMap[ArgumentKeys.value] ?? 0,
        );
        break;
      case green:
        return GreenPage(
          value: argumentsMap[ArgumentKeys.value] ?? 0,
        );
        break;
      default:
        // return SizedBox(
        //   child: Text(
        //     'root page',
        //     textAlign: TextAlign.center,
        //   ),
        // );
        return Container();
    }
  }
}
