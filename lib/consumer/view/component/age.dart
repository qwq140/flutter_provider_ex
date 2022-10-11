import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/consumer/model/dog.dart';
import 'package:provider/provider.dart';

class Age extends StatelessWidget {
  const Age({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Dog>(builder: (_, Dog dog, __) {
      return Column(
        children: [
          Text(
            '- age : ${dog.age}',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => dog.grow(),
            child: const Text(
              'grow',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      );
    },);
  }
}
