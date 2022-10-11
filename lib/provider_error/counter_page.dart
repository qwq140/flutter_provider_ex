import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/provider_error/counter.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int myCounter = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read()<Counter>().increment();
      myCounter = context.read<Counter>().counter + 10;
    });
    // Future.delayed(Duration(seconds: 0), (){
    //     context.read<Counter>().increment();
    //     myCounter = context.read<Counter>().counter + 10;
    // });
    // Future.microtask(() {
    //       context.read<Counter>().increment();
    //       myCounter = context.read<Counter>().counter + 10;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('counter'),),
      body: Center(
        child: Text('counter : ${context.watch<Counter>().counter} \n myCounter : $myCounter'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            context.read<Counter>().increment();
          }
      ),
    );
  }
}
