import 'package:flutter/material.dart';
import 'package:plant_app/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialApp(
        initialRoute: RouteManager.homePage,
        onGenerateRoute: RouteManager.generateRoute,
      ),
    );
  }
}
