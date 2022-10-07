import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/change_notifier/model/dog.dart';
import 'package:provider/provider.dart';

class Age extends StatelessWidget {
  final Dog dog;

  const Age({Key? key, required this.dog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}
