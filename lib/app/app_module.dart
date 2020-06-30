import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scanner/app/app_widget.dart';

import 'pages/home/home_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage())
  ];
  
}