import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scanner/app/components/camera_screen/camera_controller.dart';

class TakePictureButtonWidget extends StatelessWidget {
  final controller = Modular.get<CameraScreenController>();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return FloatingActionButton(
          backgroundColor: controller.isTakePicture ? Colors.lightGreen : Colors.orange,
          child: Icon(controller.isTakePicture ? Icons.check : Icons.camera),
          onPressed: () async {
            if (controller.isTakePicture) {
              print('converter');
              controller.createAPdF();
            } else {
              controller.chnageIsTake(true);
            }
          },
        );
      },
    );
  }
}
