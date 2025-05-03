import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void incrementTeamA({required String teamName,required int buttonNumber}) {
    if(teamName =='A'){
      if (teamAPoints <99) {
  teamAPoints+=buttonNumber;
}
    emit(CounterIncrementState());
    }

    if(teamName =='B'){
    if (teamBPoints <99) {
  teamBPoints+=buttonNumber;
}
    emit(CounterIncrementState());
  }
  }

  
}
