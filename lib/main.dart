import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dart:async';

import 'package:myapp/map_screen.dart';

import 'package:myapp/splash_screen.dart';
import 'package:myapp/sign_up.dart';
import 'home_screen.dart';
import 'package:myapp/login.dart';
import 'package:myapp/location_service.dart';

import 'network_request.dart';
void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var box = GetStorage();
    // box.remove('user');
    // box.remove('token');
    var screen = null;
    if (box.read('token') != null) {
      screen = HomeScreen();
    } else {
      screen = Login();
    }
    return MaterialApp(
      title: "Flutter demo",
      home: screen,
      routes: <String, WidgetBuilder> {
        "login" : (BuildContext context) => new Login(),
        "signup" : (BuildContext context) => new SignUp(),
        "home" : (BuildContext context) => new HomeScreen(),
      }
    );
  }
}




