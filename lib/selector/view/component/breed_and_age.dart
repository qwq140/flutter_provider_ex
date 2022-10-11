import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/selector/model/dog.dart';
import 'package:flutter_provider_ex/selector/view/component/age.dart';
import 'package:provider/provider.dart';

class BreedAndAge extends StatelessWidget {
  const BreedAndAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<Dog, String>(
      selector: (BuildContext context, Dog dog) => dog.breed,
      builder: (_, String breed, __) {
      return Column(
        children: [
          Text('- breed : $breed', style: const TextStyle(fontSize: 20),),
          const SizedBox(height: 10,),
          const Age(),
        ],
      );
    },);
  }
}
