import 'package:flutter/material.dart';

class CounterA extends StatelessWidget {

  final int counter;
  final Function() increment;

  const CounterA({Key? key, required this.counter, required this.increment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[100],
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            '$counter',
            style: TextStyle(fontSize: 48),
          ),
          ElevatedButton(
            onPressed: increment,
            child: Text(
              'increment',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
