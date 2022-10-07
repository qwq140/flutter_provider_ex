import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/change_notifier/model/dog.dart';
import 'package:flutter_provider_ex/change_notifier/view/component/breed_and_age.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final dog = Dog(name: 'dog1', breed: 'breed1');

  @override
  void initState() {
    super.initState();
    dog.addListener(dogListener);
  }

  void dogListener(){
    print('age : ${dog.age}');
  }

  @override
  void dispose() {
    dog.removeListener(dogListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChangeNotifier'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('- name : ${dog.name}', style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 10,),
            BreedAndAge(dog : dog),
          ],
        ),
      ),
    );
  }
}
