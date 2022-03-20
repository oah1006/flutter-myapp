import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:get_storage/get_storage.dart';


class ShowPicker extends StatelessWidget {
  @override
  void showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) =>
          CupertinoActionSheet(
            title: Text('Choose An Option'),
            actions: <Widget> [
              CupertinoActionSheetAction(
                child: const Text('Profile'),
                onPressed: () {
                }
              ),
              CupertinoActionSheetAction(
                child: const Text('Logout'),
                onPressed: () {
                  var box = GetStorage();
                  box.remove('user');
                  box.remove('token');
                  Navigator.of(context).pushNamed("login");
                }
              )
            ],
            cancelButton: CupertinoActionSheetAction(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, 'Cancel');
              },
            ),
          )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
    );
  }
}