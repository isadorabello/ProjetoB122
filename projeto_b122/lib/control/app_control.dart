import 'package:flutter/material.dart';

class AppControl extends ChangeNotifier {
  static AppControl instance = AppControl();
  bool isDarkTheme = false; //iniciando a variavel
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
