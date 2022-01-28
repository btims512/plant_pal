import 'package:flutter/material.dart';

AppBar buildAppBar({MaterialColor primaryColor}) {
  return AppBar(
    backgroundColor: Color(0xFF0C9869),
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.menu),
      // icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {
        return Scaffold();
      },
    ),
  );
}
