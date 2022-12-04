import 'package:flutter/material.dart' show ChangeNotifier;

class CounterModel extends ChangeNotifier {
  var count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}
