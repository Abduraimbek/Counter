import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_counter/counter/counter_model.dart';
import 'package:get_it_counter/counter/counter_page.dart';

GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton(CounterModel());

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetIt Counter',
      home: CounterPage(title: 'GetIt Counter'),
    );
  }
}
