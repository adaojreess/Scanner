
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scanner/app/app_widget.dart';

import 'package:scanner/app/pages/abaut/abaut_page.dart';
import 'package:scanner/app/pages/camera/camera_page.dart';

import 'app_conttroller.dart';
import 'components/camera_screen/camera_controller.dart';
import 'pages/home/home_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => CameraScreenController.controller, lazy: false),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/abaut', child: (_, args) => AbautPage()),
        Router('/camera', child: (_, args) => CameraPage())
      ];

  @override
  Widget get bootstrap {
    return AppWidget();
  }
}
