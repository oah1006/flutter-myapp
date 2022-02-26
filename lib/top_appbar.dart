import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
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
            CupertinoIcons.bell_fill,
            color: Colors.blue,
            size: 36.0,
        ),
      ),
      child: Column(
        children: <Widget>[
        ],
      ),
    );
  }
}