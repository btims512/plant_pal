import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components/NavBar.dart';
import 'package:plant_app/components/my_bottom_nav_bar.dart';
import 'package:plant_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: buildAppBar(primaryColor: Colors.green),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar({MaterialColor primaryColor}) {
    return AppBar(
      title: Text(
        "PlantPal",
        style: TextStyle(
          fontFamily: "Dutch-tulips",
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color(0xFF0C9869),
      elevation: 0,
      // leading: IconButton(
      //   icon: Icon(Icons.menu),
      //   // icon: SvgPicture.asset("assets/icons/menu.svg"),
      //   onPressed: () {
      //     return Scaffold(
      //       drawer: NavBar(),
      //     );
      //   },
      // ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
