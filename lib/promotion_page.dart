import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PromotionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    return CupertinoPageScaffold(
        child: Center(
            child: Text(
                'Promotion Page',
                style: TextStyle(
                  decoration: TextDecoration.none,
                )
            )
        )
    );
  }
}