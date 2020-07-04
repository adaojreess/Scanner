import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:scanner/app/components/camera_screen/camera_controller.dart';
import 'package:scanner/app/components/image_screen/image_screen_widget.dart';

class CameraScreenWidget extends StatelessWidget {
  final CameraScreenController cameraScreenController;

  CameraScreenWidget(this.cameraScreenController);

  @override
  Widget build(BuildContext context) {
    cameraScreenController.init();
    return Observer(
      builder: (_) {
        if (cameraScreenController.pathImage.length > 0) {
          return Center(
            child: ImageScreenWidget(cameraScreenController.pathImage),
          );
        } else if (cameraScreenController.isInitialized) {
          return AspectRatio(
            aspectRatio:
                cameraScreenController.cameraController.value.aspectRatio,
            child: CameraPreview(cameraScreenController.cameraController),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
