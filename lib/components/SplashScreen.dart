import 'dart:async';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/home_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: HomeScreen(),
      duration: 5000,
      imageSize: 130,
      imageSrc: 'assets/icons/splash_plant.png',
      // imageSrc: "Plant-App-Flutter-UI/assets/images/navbar_cover.jpg",
      text: "PlantPal",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
        fontFamily: 'DancingScript',
        // fontWeight: FontWeight.bold,
      ),
      colors: [
        Color(0xFFD3F9DB),
        Color(0xFFFFFFFF),
        Color(0xFF0C9869),
      ],

      backgroundColor: Color(0xFF0C9869),
    );
  }
}
