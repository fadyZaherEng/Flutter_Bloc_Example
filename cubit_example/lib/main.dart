import 'package:bloc/bloc.dart';
import 'package:cubit_example/counter.dart';
import 'package:cubit_example/cubit/cubit.dart';
import 'package:flutter/material.dart';

import 'cubit/cubitShowStates.dart';

void main() {
  runApp( MyApp());
  Bloc.observer = SimpleBlocObserver();
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: counterScreen(),
    );
  }
}
