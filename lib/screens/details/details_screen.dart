import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart';
import 'package:plant_app/screens/details/components/bodyPlant2.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class DetailsScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyPlant2(),
    );
  }
}
