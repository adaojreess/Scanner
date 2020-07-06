import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_conttroller.dart';

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final appController = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Scanner",
          theme: ThemeData(
            primarySwatch: Colors.orange,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            brightness: (appController.isDark != null
                ? (appController.isDark ? Brightness.dark : Brightness.light)
                : SchedulerBinding.instance.window.platformBrightness),
          ),
          initialRoute: '/',
          navigatorKey: Modular.navigatorKey,
          onGenerateRoute: Modular.generateRoute,
        );
      },
    );
  }
}
