import 'package:mobx/mobx.dart';
part 'app_conttroller.g.dart';

class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  @observable
  bool isDark;
  @action
  changeIsDark(bool value) => isDark = value; 
}