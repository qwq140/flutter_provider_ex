import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/future_provider/model/babies.dart';
import 'package:flutter_provider_ex/future_provider/model/dog.dart';
import 'package:flutter_provider_ex/future_provider/view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final dog = Dog(name: 'dog', breed: 'breed');

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Dog>(
          create: (context) => dog,
        ),
        FutureProvider<int>(initialData: 0, create: (context){
          final int dogAge = dog.age;
          final babies = Babies(age: dogAge);
          return babies.getBabies();
        }),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
