import 'package:flutter/material.dart';
import 'package:get_it_counter/counter/counter_model.dart';
import 'package:get_it_counter/main.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  void initState() {
    super.initState();
    getIt<CounterModel>().addListener(update);
  }

  @override
  void dispose() {
    getIt<CounterModel>().removeListener(update);
    super.dispose();
  }

  void update() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
              textAlign: TextAlign.center,
            ),
            Text(
              '${getIt<CounterModel>().count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => getIt<CounterModel>().incrementPressed(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
