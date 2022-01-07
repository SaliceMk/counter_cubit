import 'package:counter_cubit/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreenPage extends StatelessWidget {
  const SecondScreenPage({ Key? key , required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),

      ),
      body:  Center(child: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return Text('Welcome to the second screen. Value = '+state.counterValue.toString());
        },
      )),
    );
  }
}