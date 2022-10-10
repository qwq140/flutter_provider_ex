import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/stream_provider/model/dog.dart';
import 'package:flutter_provider_ex/stream_provider/view/component/age.dart';
import 'package:provider/provider.dart';

class BreedAndAge extends StatelessWidget {
  const BreedAndAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('- breed : ${context.select<Dog, String>((dog) => dog.breed)}', style: const TextStyle(fontSize: 20),),
        const SizedBox(height: 10,),
        const Age(),
      ],
    );
  }
}
