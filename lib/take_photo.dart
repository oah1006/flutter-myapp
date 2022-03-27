import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class TakePhoto extends StatefulWidget {
  final CameraDescription? camera;

  TakePhoto({this.camera});

  @override
  _TakePhotoState createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {
    late CameraController _controller;
    late Future<void> _initializeControllerFuture;

    @override
    void initState() {
      super.initState();

      _controller = CameraController(
        // Get a specific camera from the list of available cameras.
        widget.camera as CameraDescription,
        // Define the resolution to use.
        ResolutionPreset.medium,
      );

      // Next, initialize the controller. This returns a Future.
      _initializeControllerFuture = _controller.initialize();
    }

    Future<XFile?> takePicture() async {
      if (_controller.value.isTakingPicture) {
        return null;
      }

      try {
        XFile file = await _controller.takePicture();
        return file;
      } on CameraException catch (e) {
        print(e);
        return null;
      }
    }

    @override
    Widget build(BuildContext context) {
      return Center();
    }
}