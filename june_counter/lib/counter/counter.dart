import 'package:june/june.dart';

class CounterVM extends JuneState {
  var count = 0;

  void increment() {
    count++;
    setState();
  }
}
