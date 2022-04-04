
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
    FilePickerResult? result;
    PlatformFile? file;

    void pickerFile() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if(result == null) return;
      PlatformFile? file = result.files.first;

      viewFile(file);
    }

    void viewFile(PlatformFile file) {

    }

    @override
    Widget build(BuildContext context) {
      return CupertinoButton.filled(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        onPressed: () {
          pickerFile();
        },
        child: Text('Upload'),

      );

    }
}