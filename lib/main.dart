import 'package:counter_cubit/wrapper/bloc_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/pages.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COunter Cubit demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const BlocWrapper(),
    );
  }
}