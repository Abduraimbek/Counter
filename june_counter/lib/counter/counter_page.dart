import 'package:flutter/material.dart';
import 'package:june/june.dart';
import 'package:june_counter/counter/counter.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('June Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            JuneBuilder(
              () => CounterVM(),
              builder: (controller) {
                return Text('Count: ${controller.count}');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          June.getState(CounterVM()).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
