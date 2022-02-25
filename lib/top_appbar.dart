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
    // return CupertinoPageScaffold(
    //     navigationBar: CupertinoNavigationBar(
    //       // Try removing opacity to observe the lack of a blur effect and of sliding content.
    //       leading: Icon(Icons.list),
    //       trailing: Icon(Icons.qr_code),
    //       padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
    //       border: Border(
    //           bottom:BorderSide(
    //               width: 1,
    //               color: CupertinoColors.activeGreen,
    //               style: BorderStyle.solid
    //           )
    //       ),
    //
    //     ),
    //     child: Container()
    // );
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        // Try removing opacity to observe the lack of a blur effect and of sliding content.
        middle: Icon(CupertinoIcons.bell_fill),
        leading: Icon(CupertinoIcons.list_bullet),
        trailing: Icon(CupertinoIcons.qrcode),
      ),
      child: Column(
        children: <Widget>[
        ],
      ),
    );
  }
}