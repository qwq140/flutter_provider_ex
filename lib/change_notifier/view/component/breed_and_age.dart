import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/change_notifier/model/dog.dart';
import 'package:flutter_provider_ex/change_notifier/view/component/age.dart';
import 'package:provider/provider.dart';

class BreedAndAge extends StatelessWidget {
  final Dog dog;

  const BreedAndAge({Key? key, required this.dog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('- breed : ${dog.breed}', style: TextStyle(fontSize: 20),),
        const SizedBox(height: 10,),
        Age(dog : dog),
      ],
    );
  }
}
