import 'package:flutter/material.dart' show ChangeNotifier;

class Counter extends ChangeNotifier {
  var count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}
