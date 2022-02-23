import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:myapp/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarPage(),
      body: Center(

      ),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar AppBarPage() {
    return AppBar(
      title: Text('App Bar Tutorial'),
    );
  }
}