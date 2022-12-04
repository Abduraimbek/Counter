part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {}

class CounterCountState extends CounterState {
  final int count;

  CounterCountState({
    required this.count,
  });

  CounterCountState copyWith({
    int? count,
  }) {
    return CounterCountState(
      count: count ?? this.count,
    );
  }

  @override
  List<Object?> get props => [count];
}
