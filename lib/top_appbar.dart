import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        // Try removing opacity to observe the lack of a blur effect and of sliding content.
        backgroundColor: CupertinoColors.systemGrey.withOpacity(0.5),
        middle: const Text('Sample Code'),
      ),
      child: Column(
        children: <Widget>[
          Container(height: 50, color: CupertinoColors.systemRed),
          Container(height: 50, color: CupertinoColors.systemGreen),
          Container(height: 50, color: CupertinoColors.systemBlue),
          Container(height: 50, color: CupertinoColors.systemYellow),
        ],
      ),
    );
  }
}