import 'package:flutter/material.dart';

class CounterB extends StatelessWidget {
  final int counter;

  const CounterB({Key? key, required this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow[100],
      padding: const EdgeInsets.all(10),
      child: Text(
        '$counter',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
