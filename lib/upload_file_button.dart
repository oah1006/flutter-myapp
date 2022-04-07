
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/alert_dialog.dart';
import 'package:myapp/form.dart';


class FileUpload extends StatefulWidget {
  String? name;
  final void callback;
  FileUpload({Key? key, this.name, this.callback}) : super(key: key);

  @override
  _FileUpload createState() => _FileUpload();

}

class _FileUpload extends State<FileUpload> {
    PlatformFile? pickedFile;

    Future selectFile(widget) async {
      final result = await FilePicker.platform.pickFiles();
      if (result == null) return;

      setState(() {
        pickedFile = result.files.first;
      });

      widget.callback(widget.name, result.files.first.path);

      print(pickedFile);
    }

    @override
    Widget build(BuildContext context) {
      return CupertinoButton.filled(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        onPressed: () {
          selectFile(widget);
        },
        child: pickedFile != null ? Text('Selected') : Text('Upload'),

      );

    }
}