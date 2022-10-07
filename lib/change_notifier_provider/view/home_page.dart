import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/change_notifier_provider/model/dog.dart';
import 'package:flutter_provider_ex/change_notifier_provider/view/component/breed_and_age.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChangeNotifierProvider'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('- name : ${Provider.of<Dog>(context).breed}', style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 10,),
            const BreedAndAge(),
          ],
        ),
      ),
    );
  }
}
