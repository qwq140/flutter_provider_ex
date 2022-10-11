import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/more_provider_not_found_exception/counter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChangeNotifierProvider<Counter>(
          create: (context) => Counter(),
          child: Builder(
            builder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${context.watch<Counter>().counter}',
                    style: TextStyle(fontSize: 20)),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<Counter>().increment();
                  },
                  child: Text(
                    'Increment',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChildWidget extends StatelessWidget {
  const ChildWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${context.watch<Counter>().counter}',
            style: TextStyle(fontSize: 20)),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            context.read<Counter>().increment();
          },
          child: Text(
            'Increment',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
