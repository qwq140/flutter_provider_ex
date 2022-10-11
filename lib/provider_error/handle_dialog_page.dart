import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/provider_error/counter.dart';
import 'package:provider/provider.dart';

class HandleDialogPage extends StatefulWidget {
  const HandleDialogPage({Key? key}) : super(key: key);

  @override
  State<HandleDialogPage> createState() => _HandleDialogPageState();
}

class _HandleDialogPageState extends State<HandleDialogPage> {
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          content: Text('be careful'),
        );
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if(context.read<Counter>().counter == 3){
        showDialog(context: context, builder: (context) {
          return AlertDialog(
            content: Text('counter 3'),
          );
        });
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Handle Dialog'),),
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
