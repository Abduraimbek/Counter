import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/counter/counter.dart';
import 'package:provider_counter/counter/counter_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Counter(),
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
      home: CounterPage(),
    );
  }
}
