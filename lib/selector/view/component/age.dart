import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/selector/model/dog.dart';
import 'package:provider/provider.dart';

class Age extends StatelessWidget {
  const Age({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<Dog, int>(
      selector: (BuildContext context, Dog dog) => dog.age,
      builder: (_, int age, __) {
        return Column(
          children: [
            Text(
              '- age : $age',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => context.read<Dog>().grow(),
              child: const Text(
                'grow',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        );
      },
    );
  }
}
