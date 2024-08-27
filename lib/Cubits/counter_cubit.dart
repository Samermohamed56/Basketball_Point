import 'package:first_flutter_project/Cubits/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterTeamAState());
  int teamAPoints = 0;

  int teamBPoints = 0;

  void increament({required String team, required int buttonnumber}) {
    if (team == 'A') {
      teamAPoints += buttonnumber;
    } else {
      teamBPoints += buttonnumber;
    }
  }
}
  