import 'package:flutter2/view/arithmetic_view.dart';
import 'package:flutter2/view/dashboard_view.dart';
import 'package:flutter2/view/output_view.dart';
import 'package:flutter2/view/random_view.dart';

class AppRoute {
  AppRoute._();

  static const String dashboardRoute = '/dash';
  static const String arithmeticRoute = '/arithmetic';
  static const String outputRoute = '/output';
  static const String randomRoute = '/random';

  static getApplicationRoute() {
    return {
      dashboardRoute: (context) => const DashboardView(),
      outputRoute: (context) => const OutputView(),
      arithmeticRoute: (context) => const ArithmeticView(),
      randomRoute: (context) => const RandomScreen()
    };
  }
}
