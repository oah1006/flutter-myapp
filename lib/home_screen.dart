import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          // Try removing opacity to observe the lack of a blur effect and of sliding content.
          middle: Text(
              "DRIVOR",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueAccent,
                fontWeight: FontWeight.w600,
              )
          ),
          leading: Icon(
            CupertinoIcons.list_bullet,
            color: Colors.blue,
            size: 36.0,
          ),
          trailing: Icon(
            CupertinoIcons.person_fill,
            color: Colors.blue,
            size: 36.0,
          ),
        ),
        child: MyBottomNavBar()
    );
  }

}