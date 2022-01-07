import 'package:flutter/material.dart';

class SecondScreenPage extends StatelessWidget {
  const SecondScreenPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),

      ),
      body: const Center(child: Text('You\'ve reached 5')),
    );
  }
}