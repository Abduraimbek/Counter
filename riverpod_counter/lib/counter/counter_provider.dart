import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.freezed.dart';
part 'counter_provider.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  CounterState build() {
    return const CounterState(count: 0);
  }

  void incrementPressed() => state = state.copyWith(count: state.count + 1);
}

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    required int count,
  }) = _CounterState;
}
