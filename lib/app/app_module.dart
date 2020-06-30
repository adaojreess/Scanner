// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scanner/app/app_widget.dart';
import 'package:scanner/app/pages/abaut/abaut_page.dart';

import 'app_conttroller.dart';
import 'pages/home/home_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
        Router('/abaut', child: (_, args) => AbautPage())
      ];

  @override
  Widget get bootstrap => AppWidget();
}
