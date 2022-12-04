import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/counter/counter_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX Counter',
      home: CounterPage(title: 'GetX Counter'),
    );
  }
}
