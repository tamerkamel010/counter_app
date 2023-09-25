import 'package:counter_app/modules/counter/controller/cubit.dart';
import 'package:counter_app/modules/counter/controller/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterStates>(
      builder: (BuildContext context, CounterStates state) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100,),
              Text('${CounterCubit.get(context).value}',style: const TextStyle(fontSize: 50),),
              const Spacer(),
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(onPressed: (){
                        CounterCubit.get(context).add();
                      }, child: const Icon(Icons.exposure_plus_1)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: ElevatedButton(onPressed: (){
                        CounterCubit.get(context).minus();
                      }, child: const Icon(Icons.exposure_minus_1)),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      listener: (BuildContext context, CounterStates state) {  },
    );
  }
}