import 'package:flutter/material.dart';
import 'package:flutter2/app/routes/app_routes.dart';
import 'package:flutter2/view/dashboard_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DashboardView(),
      initialRoute: AppRoute.dashboardRoute,
      routes: AppRoute.getApplicationRoute(),
    );
  }
}
