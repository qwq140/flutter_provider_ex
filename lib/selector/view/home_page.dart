import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/selector/model/dog.dart';
import 'package:flutter_provider_ex/selector/view/component/breed_and_age.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Extension Method'),
      ),
      // child : 리빌드가 필요하지 않는 위젯 정의
      body: Selector<Dog, String>(
        selector: (BuildContext context, Dog dog) => dog.name,
        builder: (context, String name, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                child!,
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '- name : $name',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                const BreedAndAge(),
              ],
            ),
          );
        },
        child: Text(
          'I like dogs very much',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
