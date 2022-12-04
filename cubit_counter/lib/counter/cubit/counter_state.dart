part of 'counter_cubit.dart';

class CounterState extends Equatable {
  final int count;

  const CounterState({
    required this.count,
  });

  CounterState copyWith({
    int? count,
  }) {
    return CounterState(
      count: count ?? this.count,
    );
  }

  @override
  List<Object?> get props => [count];
}
