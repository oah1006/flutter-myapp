
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/alert_dialog.dart';


class FileUpload extends MyStatefulWidget {
  FileUpload({Key? key}) : super(key: key);

  @override
  _FileUpload createState() => _FileUpload();
}

class _FileUpload extends State<FileUpload> {
    PlatformFile? pickedFile;
    bool _isPreview = false;

    Future selectFile() async {
      final result = await FilePicker.platform.pickFiles();
      if (result == null) return;

      setState(() {
        pickedFile = result.files.first;
      });
    }

    @override
    Widget build(BuildContext context) {
      return CupertinoButton.filled(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        onPressed: () {
          selectFile();

        },
        child: Text('Upload'),

      );

    }
}