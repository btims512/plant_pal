import 'package:flutter/material.dart';
import 'package:plant_app/components/SplashScreen.dart';
import 'package:plant_app/screens/favorites/favorites_screen.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:plant_app/screens/profile/profile.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class RouteManager {
  static const String homePage = "/";
  static const String favoritesPage = "/favoritesPage";
  static const String profilePage = "/profilePage";
  static const String menu = "/menu";
  static const String splashScreen = "/splashScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => MyHomePage(),
        );

      case favoritesPage:
        return MaterialPageRoute(builder: (context) => FavoritesScreen());

      case profilePage:
        return MaterialPageRoute(builder: (context) => ProfileScreen());

      case menu:
        return MaterialPageRoute(builder: (context) => Menu());

      case menu:
        return MaterialPageRoute(builder: (context) => SplashScreenView());

      default:
        throw FormatException("Error 404: Route not found");
    }
  }
}
