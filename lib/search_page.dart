import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return CupertinoPageScaffold(
      child: Center(
          child: Text(
           'Search Page',
            style: TextStyle(
              decoration: TextDecoration.none,
            )
          )
      )
    );
  }
}