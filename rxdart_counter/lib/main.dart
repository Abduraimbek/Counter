import 'package:flutter/material.dart';
import 'package:rxdart_counter/counter/counter_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RxDart Counter',
      home: CounterPage(title: 'RxDart Counter'),
    );
  }
}
