import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/pages/counter_page.dart';
import 'package:provider_counter/providers/counter.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
      ),
    );
  }
}
