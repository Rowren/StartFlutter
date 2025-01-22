import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});
  @override
  State<StatefulWidget> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  int _weigth = 30;
  int _height = 120;

  Color _color = const Color.fromARGB(255, 99, 215, 230);
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
      );
  }
}
