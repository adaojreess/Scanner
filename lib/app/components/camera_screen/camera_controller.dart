import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:camera/camera.dart';
import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'package:mobx/mobx.dart';
import 'package:printing/printing.dart';
part 'camera_controller.g.dart';

class CameraScreenController = _CameraScreenControllerBase
    with _$CameraScreenController;

abstract class _CameraScreenControllerBase with Store {
  _CameraScreenControllerBase() {
    init();
  }

  @observable
  List<CameraDescription> cameras;
  @action
  changeCameras(List<CameraDescription> value) => cameras = value;

  @observable
  CameraController cameraController;
  @action
  changeCameraController(CameraController value) => cameraController = value;

  @observable
  String pathImage = '';
  @action
  changePath(String value) => pathImage = value;

  @observable
  bool isInitialized = false;
  @action
  changeIsInitialized(bool value) => isInitialized = value;

  @observable
  bool isTakePicture = false;
  @action
  chnageIsTake(bool value) {
    if (!isTakePicture) {
      takePicture();
    }
    isTakePicture = value;
  }

  Future<void> init() async {
    changeIsInitialized(false);
    changePath('');
    chnageIsTake(false);

    cameras = await availableCameras();
    cameraController = CameraController(cameras[0], ResolutionPreset.high);
    await cameraController.initialize();
    changeIsInitialized(cameraController.value.isInitialized);
  }

  Future<void> takePicture() async {
    final path = join(
      (await getTemporaryDirectory()).path,
      '${DateTime.now()}.png',
    );
    await cameraController.takePicture(path);
    changePath(path);
  }

  void createAPdF() async {
    Printing.layoutPdf(onLayout: (pageFormat) {
      final doc = pw.Document();

      final image = PdfImage.file(
        doc.document,
        bytes: File(pathImage).readAsBytesSync(),
      );

      doc.addPage(
        pw.Page(
          build: (pw.Context context) => pw.Center(
            child: pw.Image(image, height: 800, width: 620),
          ),
        ),
      );
      return doc.save();
    });
  }
}
