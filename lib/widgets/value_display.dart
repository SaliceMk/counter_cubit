import 'package:counter_cubit/logic/logic.dart';
import 'package:counter_cubit/pages/second_screen.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ValueDisplay extends StatelessWidget {
  const ValueDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocConsumer<CounterCubit, CounterState>(

        listener: (context, state) {
           
          // TODO: implement listener
          if(state.wasIncremented==true){
            Scaffold.of(context).showSnackBar(
              const SnackBar(content: Text('Incremented!'),
              duration: Duration(milliseconds: 300),),
              
            );

          }
          // else if(state.wasIncremented==true && state.counterValue>5){
          //   print('More than');
          //   //Navigator.push(context, MaterialPageRoute(builder: (context){return const SecondScreenPage();}),);
          // }
          else if(state.wasIncremented==false){
            Scaffold.of(context).showSnackBar(
              const SnackBar(content: Text('Decremented!'),
              duration: Duration(milliseconds: 300),)
            );
            // else if(state.counterValue==5){
            //   Navigator.push(context, MaterialPageRoute(builder: (context)=> const SecondScreenPage(),),);
            // }
          }
        },
       
        builder: (context, state) {
          return Text('Your Value: '+state.counterValue.toString(),
          style: Theme.of(context).textTheme.headline4,);
        },
         
      ),
    );
  }
}
