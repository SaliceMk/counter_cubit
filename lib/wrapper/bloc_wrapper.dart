import 'package:counter_cubit/logic/logic.dart';
import 'package:counter_cubit/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BlocWrapper extends StatelessWidget {
  const BlocWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const HomePage(),
    );
  }
}
