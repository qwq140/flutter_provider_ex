import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/provider/model/dog.dart';
import 'package:flutter_provider_ex/provider/view/component/age.dart';
import 'package:provider/provider.dart';

class BreedAndAge extends StatelessWidget {
  const BreedAndAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('- breed : ${Provider.of<Dog>(context).breed}', style: TextStyle(fontSize: 20),),
        const SizedBox(height: 10,),
        const Age(),
      ],
    );
  }
}
