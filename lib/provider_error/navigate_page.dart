import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/provider_error/counter.dart';
import 'package:provider/provider.dart';

class NavigatePage extends StatefulWidget {
  const NavigatePage({Key? key}) : super(key: key);

  @override
  State<NavigatePage> createState() => _NavigatePageState();
}

class _NavigatePageState extends State<NavigatePage> {
  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(context.read<Counter>().counter == 3){
        Navigator.push(context, MaterialPageRoute(builder: (_) => OtherPage()));
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('NavigatePage'),),
      body: Center(
        child: Text('counter : ${context.watch<Counter>().counter}'),
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

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Other Page'),),
      body: Center(
        child: Text('other'),
      ),
    );
  }
}

