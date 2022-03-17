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
          leading: CupertinoButton(
            child: const Icon(CupertinoIcons.bars),
            onPressed: () {},
            padding: EdgeInsets.zero,
          ),
          trailing: CupertinoButton(
            child: const Icon(CupertinoIcons.person_fill),
            onPressed: () {},
            padding: EdgeInsets.zero,
          ),
        ),
        child: MyBottomNavBar()
    );
  }

}