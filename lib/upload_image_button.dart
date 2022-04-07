import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageButton extends StatefulWidget {
  String label = '';
  String? name;
  final void callback;

  UploadImageButton({Key? key,required this.label, this.name, this.callback}) : super(key: key);


  @override
  _UploadImageButton createState() => _UploadImageButton();
}

class _UploadImageButton extends State<UploadImageButton> {
  File? image;
  bool _isPreview = false;
  final ImagePicker _picker = ImagePicker();

  Future takePhoto(widget, context) async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if (photo == null) return;
    setState(() {
      _isPreview = true;
      image = File(photo.path);
    });
    widget.callback(widget.name, image?.path);
    Navigator.pop(context);
  }

  Future takeLibrary(widget, context) async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    setState(() {
      _isPreview = true;
      this.image = File(image.path);
    });

    widget.callback(widget.name, image.path);
    Navigator.pop(context);
  }



  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        child: _isPreview ? Image.file(image!) : Text(widget.label) ,
        onPressed: () {
          // ShowPickerUpload().showActionSheet(context);
          showCupertinoModalPopup(
              context: context,
              builder: (BuildContext context) =>
                  CupertinoActionSheet(
                    title: Text('Choose An Option'),
                    actions: <Widget> [
                      CupertinoActionSheetAction(
                          child: const Text('Take to photo'),
                          onPressed: () async {
                            takePhoto(widget, context);
                          }
                      ),
                      CupertinoActionSheetAction(
                          child: const Text('Upload the library'),
                          onPressed: () async {
                            takeLibrary(widget, context);
                          }
                      ),
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
    );
  }
}