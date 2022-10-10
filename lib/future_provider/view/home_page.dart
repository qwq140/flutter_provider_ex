import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/future_provider/model/dog.dart';
import 'package:flutter_provider_ex/future_provider/view/component/breed_and_age.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Extension Method'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('- name : ${context.select<Dog, String>((dog) => dog.name)}', style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 10,),
            const BreedAndAge(),
          ],
        ),
      ),
    );
  }
}
