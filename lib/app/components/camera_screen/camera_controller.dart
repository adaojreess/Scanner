import 'package:camera/camera.dart';
import 'dart:async';


class CameraScreenController {
  List<CameraDescription> cameras;
  CameraController cameraController;

  static final CameraScreenController controller = CameraScreenController._();

  Stream<bool> init() async* {
    await cameraController.initialize();
    yield true;
  }

  CameraScreenController._() {
    () async {
      cameras = await availableCameras();
      cameraController = CameraController(cameras[0], ResolutionPreset.high);
    }();
  }
}
