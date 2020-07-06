import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_conttroller.dart';

class CustomSwitchWidget extends StatelessWidget {
  final appController = Modular.get<AppController>();
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Switch(
          value: appController.isDark != null
              ? appController.isDark
              : (SchedulerBinding.instance.window.platformBrightness == Brightness.dark ? true : false),
          onChanged: (value) {
            appController.changeIsDark(value);
          },
        );
      },
    );
  }
}
