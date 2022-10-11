import 'package:flutter/material.dart';

class Translations {
  final int _value;

  Translations(this._value);

  String get title => 'You clicked $_value times';
}

class ChgnotiprovChgnotiproxyprov extends StatefulWidget {
  const ChgnotiprovChgnotiproxyprov({Key? key}) : super(key: key);

  @override
  State<ChgnotiprovChgnotiproxyprov> createState() => _ChgnotiprovChgnotiproxyprovState();
}

class _ChgnotiprovChgnotiproxyprovState extends State<ChgnotiprovChgnotiproxyprov> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
      print('counter : $counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Why ProxyProvider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowTranslations(),
            SizedBox(
              height: 20,
            ),
            IncreaseButton(increment: increment),
          ],
        ),
      ),
    );
  }
}

class ShowTranslations extends StatelessWidget {
  const ShowTranslations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('You clicked 0 times', style: TextStyle(fontSize: 28));
  }
}

class IncreaseButton extends StatelessWidget {
  final VoidCallback increment;

  const IncreaseButton({Key? key, required this.increment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: increment,
      child: Text(
        'INCREASE',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}