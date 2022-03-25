import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            onPressed: () => Navigator.of(context).pushNamed("recruitment"),
          )
      ),
      child: Center(
        child: Text('hi')
      )
    );
  }
}