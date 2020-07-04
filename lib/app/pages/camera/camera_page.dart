import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scanner/app/components/camera_screen/camera_controller.dart';
import 'package:scanner/app/components/camera_screen/camera_screen.widget.dart';
import 'package:scanner/app/components/cuspom_app_bar/cutom_app_bar.dart';

class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: AppBar().preferredSize,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: CameraScreenWidget(
            Modular.get<CameraScreenController>(),
          ),
        ),
      ),
    );
  }
}
