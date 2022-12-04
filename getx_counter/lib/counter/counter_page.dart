import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/counter/counter_controller.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({
    super.key,
    required this.title,
  });

  final String title;

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
            GetBuilder<CounterController>(
              init: CounterController(),
              builder: (controller) {
                return Text(
                  '${controller.count}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.find<CounterController>().increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
