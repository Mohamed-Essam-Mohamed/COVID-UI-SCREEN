import 'package:covid_app3/src/feature/home/details_screen.dart';
import 'package:covid_app3/src/feature/home/home_screen.dart';
import 'package:covid_app3/src/utils/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CovidApp());
}

class CovidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('en'),
      title: "Covid App",
      theme: AppTheme.themeData,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        DetailsScreen.routeName: (context) => DetailsScreen(),
      },
    );
  }
}
