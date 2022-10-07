import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/non_provider/component/counter_a.dart';
import 'package:flutter_provider_ex/non_provider/component/middle.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int counter = 0;

  void increment(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('couter'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue[100],
              padding: const EdgeInsets.all(20),
              child: const Text('HomePage', style: TextStyle(fontSize: 24),),
            ),
            const SizedBox(height: 20),
            CounterA(counter: counter, increment : increment),
            const SizedBox(height: 20),
            Middle(counter: counter),
          ],
        ),
      ),
    );
  }
}