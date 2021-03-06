
import 'package:counter_cubit/logic/cubit/counter_cubit.dart';
import 'package:counter_cubit/pages/second_screen.page.dart';
import 'package:counter_cubit/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Home'),
      ),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Press the buttons to check!"),

            const ValueDisplay(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(onPressed: (){
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  tooltip: 'Decrement',
                  heroTag: "btn1",
                  child: const Icon(Icons.remove),),
                  const SizedBox(width: 5,),
                  FloatingActionButton(onPressed: (){
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  tooltip: 'Increment',
                  heroTag: "btn2",
                  child: const Icon(Icons.add),),
                ],
              ),
            ),
            MaterialButton(onPressed: (){
              //builder context should be the context of the new screen
              Navigator.of(context).push(MaterialPageRoute(builder: (newContext)=>BlocProvider.value(
                value: BlocProvider.of<CounterCubit>(context),//from existing context
                child: const SecondScreenPage(title: 'Next Screen',),
              )));
            },
            child: const Text('Go to Next Screen',style: TextStyle(color: Colors.white),),
            color: Colors.indigo,
            )
          ],
        ),
      ),
    );
  }
}