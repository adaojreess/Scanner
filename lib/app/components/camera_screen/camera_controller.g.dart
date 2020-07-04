// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CameraScreenController on _CameraScreenControllerBase, Store {
  final _$camerasAtom = Atom(name: '_CameraScreenControllerBase.cameras');

  @override
  List<CameraDescription> get cameras {
    _$camerasAtom.reportRead();
    return super.cameras;
  }

  @override
  set cameras(List<CameraDescription> value) {
    _$camerasAtom.reportWrite(value, super.cameras, () {
      super.cameras = value;
    });
  }

  final _$cameraControllerAtom =
      Atom(name: '_CameraScreenControllerBase.cameraController');

  @override
  CameraController get cameraController {
    _$cameraControllerAtom.reportRead();
    return super.cameraController;
  }

  @override
  set cameraController(CameraController value) {
    _$cameraControllerAtom.reportWrite(value, super.cameraController, () {
      super.cameraController = value;
    });
  }

  final _$pathImageAtom = Atom(name: '_CameraScreenControllerBase.pathImage');

  @override
  String get pathImage {
    _$pathImageAtom.reportRead();
    return super.pathImage;
  }

  @override
  set pathImage(String value) {
    _$pathImageAtom.reportWrite(value, super.pathImage, () {
      super.pathImage = value;
    });
  }

  final _$isInitializedAtom =
      Atom(name: '_CameraScreenControllerBase.isInitialized');

  @override
  bool get isInitialized {
    _$isInitializedAtom.reportRead();
    return super.isInitialized;
  }

  @override
  set isInitialized(bool value) {
    _$isInitializedAtom.reportWrite(value, super.isInitialized, () {
      super.isInitialized = value;
    });
  }

  final _$isTakePictureAtom =
      Atom(name: '_CameraScreenControllerBase.isTakePicture');

  @override
  bool get isTakePicture {
    _$isTakePictureAtom.reportRead();
    return super.isTakePicture;
  }

  @override
  set isTakePicture(bool value) {
    _$isTakePictureAtom.reportWrite(value, super.isTakePicture, () {
      super.isTakePicture = value;
    });
  }

  final _$_CameraScreenControllerBaseActionController =
      ActionController(name: '_CameraScreenControllerBase');

  @override
  dynamic changeCameras(List<CameraDescription> value) {
    final _$actionInfo = _$_CameraScreenControllerBaseActionController
        .startAction(name: '_CameraScreenControllerBase.changeCameras');
    try {
      return super.changeCameras(value);
    } finally {
      _$_CameraScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCameraController(CameraController value) {
    final _$actionInfo =
        _$_CameraScreenControllerBaseActionController.startAction(
            name: '_CameraScreenControllerBase.changeCameraController');
    try {
      return super.changeCameraController(value);
    } finally {
      _$_CameraScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changePath(String value) {
    final _$actionInfo = _$_CameraScreenControllerBaseActionController
        .startAction(name: '_CameraScreenControllerBase.changePath');
    try {
      return super.changePath(value);
    } finally {
      _$_CameraScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeIsInitialized(bool value) {
    final _$actionInfo = _$_CameraScreenControllerBaseActionController
        .startAction(name: '_CameraScreenControllerBase.changeIsInitialized');
    try {
      return super.changeIsInitialized(value);
    } finally {
      _$_CameraScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic chnageIsTake(bool value) {
    final _$actionInfo = _$_CameraScreenControllerBaseActionController
        .startAction(name: '_CameraScreenControllerBase.chnageIsTake');
    try {
      return super.chnageIsTake(value);
    } finally {
      _$_CameraScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cameras: ${cameras},
cameraController: ${cameraController},
pathImage: ${pathImage},
isInitialized: ${isInitialized},
isTakePicture: ${isTakePicture}
    ''';
  }
}
