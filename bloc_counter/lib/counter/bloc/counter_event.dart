part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {}

class CounterIncrementPressed extends CounterEvent {
  @override
  List<Object?> get props => [];
}
