import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  var switchState = [true, true, true, true];

  void changeSwitchState(index) {
    switchState[index - 1] = !switchState[index - 1];
    notifyListeners();
  }
}
