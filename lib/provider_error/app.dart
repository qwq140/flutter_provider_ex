import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/provider_error/counter.dart';
import 'package:flutter_provider_ex/provider_error/home_page.dart';
import 'package:provider/provider.dart';

class ProviderErrorApp extends StatelessWidget {
  const ProviderErrorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      create: (_) => Counter(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
