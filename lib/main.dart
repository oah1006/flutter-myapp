import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dart:async';

import 'package:myapp/map_screen.dart';

import 'package:myapp/splash_screen.dart';
import 'package:myapp/sign_up.dart';
import 'home_screen.dart';
import 'package:myapp/login.dart';
import 'package:myapp/location_service.dart';

import 'network_request.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      home: HomeScreen(),
      routes: <String, WidgetBuilder> {
        "login" : (BuildContext context) => new Login(),
        "signup" : (BuildContext context) => new SignUp(),
      }
    );
  }
}




