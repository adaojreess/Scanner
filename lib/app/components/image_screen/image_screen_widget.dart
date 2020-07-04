import 'dart:io';

import 'package:flutter/material.dart';

class ImageScreenWidget extends StatelessWidget {
   final String imagePath;

  const ImageScreenWidget(this.imagePath);
  @override
  Widget build(BuildContext context) {
    return  Image.file(File(imagePath));
  }
}