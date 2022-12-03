import 'package:flutter/material.dart' show ChangeNotifier;

class Counter extends ChangeNotifier {
  var counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}
