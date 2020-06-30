import 'package:flutter/material.dart';
import 'package:scanner/app/components/custom_switch_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scanner'),
        actions: <Widget>[
          CustomSwitchWidget(),
        ],
      ),
      body: Center(
        child: Icon(Icons.camera),
      ),
    );
  }
}
