import 'package:flutter/material.dart';
import 'package:rxdart_counter/counter/counter.dart';

class CounterPage extends StatelessWidget {
  CounterPage({
    super.key,
    required this.title,
  });

  final String title;
  final Counter counter = Counter(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
              textAlign: TextAlign.center,
            ),
            StreamBuilder<int>(
              stream: counter.countSubject,
              builder: (context, snapshot) {
                return Text(
                  '${snapshot.data}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
