import 'package:cubit_example/cubit/states.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class counterCubit extends Cubit<CounterStates>
{
  int counter=0;
  counterCubit() : super(counterInitialStates());
  //to get object from cubit
  static counterCubit get(context)=>BlocProvider.of(context);
  void Plus(){
    counter++;
    emit(counterPlusStates(counter));
  }
  void Minus(){
    counter--;
    emit(counterMinusStates(counter));
  }
}
