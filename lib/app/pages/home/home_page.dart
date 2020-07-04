import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:scanner/app/components/cuspom_app_bar/cutom_app_bar.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: CustomAppBar(), preferredSize: AppBar().preferredSize),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlatButton(
              child: Icon(
                Icons.camera,
                size: 50,
              ),
              onPressed: () {
                Modular.to.pushNamed('camera');
              }),
          FlatButton(
              child: Icon(
                Icons.image,
                size: 50,
              ),
              onPressed: () {}),
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
