import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:myapp/login.dart';
import 'package:myapp/sign_up.dart';
import 'package:myapp/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      home: Login(),
      routes: <String, WidgetBuilder> {
        "login" : (BuildContext context) => new Login(),
        "signup" : (BuildContext context) => new SignUp(),
      }
    );
  }
}




