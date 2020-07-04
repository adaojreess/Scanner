import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:scanner/app/components/camera_screen/camera_controller.dart';

class CameraScreenWidget extends StatefulWidget {
  final CameraScreenController cameraScreenController;

  CameraScreenWidget(this.cameraScreenController);

  @override
  _CameraScreenWidgetState createState() => _CameraScreenWidgetState();
}

class _CameraScreenWidgetState extends State<CameraScreenWidget> {
  @override
  void initState() {
    super.initState();
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: widget.cameraScreenController.init(),
        builder: (_, snapshot) {
          print(snapshot.data);
          if (snapshot.hasData) {
            return AspectRatio(
              aspectRatio: widget
                  .cameraScreenController.cameraController.value.aspectRatio,
              child:
                  CameraPreview(widget.cameraScreenController.cameraController),
            );
          }

          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
