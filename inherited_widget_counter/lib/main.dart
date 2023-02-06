import 'package:flutter/material.dart';
import 'package:inherited_widget_counter/counter/counter.dart';
import 'package:inherited_widget_counter/counter/counter_page.dart';

void main() {
  runApp(
    InheritedCounter(
      counter: Counter(),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InheritedWidget Counter',
      home: CounterPage(title: 'InheritedWidget Counter'),
    );
  }
}
