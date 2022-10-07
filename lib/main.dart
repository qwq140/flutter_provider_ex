import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/change_notifier/model/dog.dart';
import 'package:flutter_provider_ex/change_notifier/view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
