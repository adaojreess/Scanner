import 'package:flutter/material.dart';
import 'package:scanner/app/components/custom_switch/custom_switch_widget.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text('Scanner'),
        actions: <Widget>[CustomSwitchWidget()],
      );
  }
}