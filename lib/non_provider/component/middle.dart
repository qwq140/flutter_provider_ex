import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/non_provider/component/counter_b.dart';
import 'package:flutter_provider_ex/non_provider/component/sibling.dart';


class Middle extends StatelessWidget {
  final int counter;

  const Middle({Key? key, required this.counter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CounterB(counter : counter),
          SizedBox(width: 20,),
          Sibling(),
        ],
      ),
    );
  }
}
