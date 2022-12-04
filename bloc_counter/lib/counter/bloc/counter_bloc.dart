import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterCountState(count: 0)) {
    on<CounterIncrementPressed>((event, emit) {
      final currState = state as CounterCountState;
      emit(currState.copyWith(count: currState.count + 1));
    });
  }
}
