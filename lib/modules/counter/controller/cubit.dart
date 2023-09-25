import 'package:counter_app/modules/counter/controller/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit():super(CounterInitial());
  static CounterCubit get(context) => BlocProvider.of<CounterCubit>(context);
  int value = 0;
  void add(){
    value++;
    emit(CounterAdd());
  }
  void  minus(){
    value++;
    emit(CounterMinus());
  }
}