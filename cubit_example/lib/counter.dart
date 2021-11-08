import 'package:cubit_example/cubit/cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/states.dart';

class counterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=>counterCubit(),
        child: BlocConsumer<counterCubit,CounterStates>(
        listener: (context,state){
          if(state is counterMinusStates) print(state.name +'${state.counter}');
          if(state is counterPlusStates) print(state.name +'${state.counter}');
        },
        builder: (context,state){
          return Scaffold(
            body: SafeArea(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            counterCubit.get(context).Plus();
                          },
                          child: Text(
                            '+',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${counterCubit.get(context).counter}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                          onPressed: () {
                            counterCubit.get(context).Minus();
                          },
                          child: Text(
                            '-',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
