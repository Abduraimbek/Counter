import 'package:flutter/material.dart';

class InheritedCounter extends InheritedWidget {
  const InheritedCounter({
    super.key,
    required this.counter,
    required super.child,
  });

  final Counter counter;

  static InheritedCounter? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedCounter>();
  }

  static InheritedCounter of(BuildContext context) {
    final InheritedCounter? result = maybeOf(context);
    assert(result != null, 'No InheritedCount found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedCounter oldWidget) {
    return counter != oldWidget.counter;
  }
}

class Counter extends ChangeNotifier {
  int _count = 0;

  int get getCount => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
