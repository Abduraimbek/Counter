import 'package:rxdart/rxdart.dart';

class Counter {
  Counter(this.count) : countSubject = BehaviorSubject.seeded(count);

  int count;
  final BehaviorSubject<int> countSubject;

  void increment() => countSubject.add(++count);
}
