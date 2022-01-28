import 'package:flutter/material.dart';
import 'package:plant_app/screens/favorites/favorites_screen.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                color: Color.fromRGBO(241, 241, 241, 0),
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/images/navbar_cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.grass),
            title: Text('Plant Library'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritesScreen(),
                ),
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Payment Methods'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {},
          ),
          ListTile(
            
            leading: Icon(Icons.exit_to_app),
            title: Text('Login'),
            onTap: () => {},
            // onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
