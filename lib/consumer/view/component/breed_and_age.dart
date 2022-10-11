import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/consumer/model/dog.dart';
import 'package:flutter_provider_ex/consumer/view/component/age.dart';
import 'package:provider/provider.dart';

class BreedAndAge extends StatelessWidget {
  const BreedAndAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Dog>(builder: (_, Dog dog, __) {
      return Column(
        children: [
          Text('- breed : ${dog.breed}', style: const TextStyle(fontSize: 20),),
          const SizedBox(height: 10,),
          const Age(),
        ],
      );
    },);
  }
}
