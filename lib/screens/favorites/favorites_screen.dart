import 'package:flutter/material.dart';
import 'package:plant_app/components/my_bottom_nav_bar.dart';
import 'package:plant_app/constants.dart';
import 'package:favorite_button/favorite_button.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: FavoritesScreen());
//   }
// }

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreen createState() => _FavoritesScreen();
}

class _FavoritesScreen extends State<FavoritesScreen> {
  Widget _buildList() {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.grass),
              title: Text("Plant"),
              trailing: FavoriteButton(
                iconSize: 36,
                iconColor: Colors.red,
                valueChanged: (_FavoritesScreen) {},
              ),
            ),
          ),
          Container(
            color: Colors.grey[100],
            child: ListTile(
              leading: Icon(Icons.grass),
              title: Text("Another Plant"),
              trailing: FavoriteButton(
                iconSize: 36,
                iconColor: Colors.red,
                valueChanged: (_FavoritesScreen) {},
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Icon(Icons.grass),
              title: Text("This Other Plant"),
              trailing: FavoriteButton(
                iconSize: 36,
                iconColor: Colors.red,
                valueChanged: (_FavoritesScreen) {},
              ),
            ),
          ),
          Container(
            color: Colors.grey[100],
            child: ListTile(
              leading: Icon(Icons.grass),
              title: Text("Robert Plant"),
              trailing: FavoriteButton(
                iconSize: 36,
                iconColor: Colors.red,
                valueChanged: (_FavoritesScreen) {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favorites"),
          backgroundColor: kPrimaryColor,
        ),
        body: _buildList(),
        bottomNavigationBar: MyBottomNavBarHeart());
  }
}

// class ListTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ,

//     );
//   }
// }
