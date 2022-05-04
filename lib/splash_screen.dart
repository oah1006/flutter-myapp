import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:myapp/home_screen.dart';
import 'package:myapp/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => Login()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 20)
                        ),
                        Text(
                            "DRIVOR",
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w900,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20)
                        ),
                        Text(
                            "Thuê tài xế chuyên nghiệp mọi lúc, mọi nơi",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w900,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 60)
                        ),
                        CircularProgressIndicator(),
                      ],
                    )
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                            "Sản phẩm của công ty DRIOVR",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w900,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 40)
                        ),
                      ],
                    )
                )
              ],
            )
          ],
        )
    );
  }
}