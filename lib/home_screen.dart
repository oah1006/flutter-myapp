import 'package:flutter/material.dart';

import 'package:myapp/top_appbar.dart';
import 'package:myapp/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

}