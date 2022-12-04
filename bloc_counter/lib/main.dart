import 'package:bloc_counter/counter/bloc/counter_bloc.dart';
import 'package:bloc_counter/counter/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => CounterBloc(),
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
      title: 'Bloc Counter',
      home: CounterPage(title: 'Bloc Counter'),
    );
  }
}
