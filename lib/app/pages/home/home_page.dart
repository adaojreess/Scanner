import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scanner/app/components/custom_switch_widget.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Build HomePage');
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanner'),
        actions: <Widget>[CustomSwitchWidget()],
      ),
      body: Center(
        child: Icon(Icons.camera),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Modular.to.pushNamed('/abaut');
      }),
    );
  }
}
