import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/change_notifier_listener/app_provider.dart';
import 'package:flutter_provider_ex/change_notifier_listener/home_page.dart';
import 'package:provider/provider.dart';

class ChangeNotifierListenerApp extends StatelessWidget {
  const ChangeNotifierListenerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppProvider>(
      create: (_) => AppProvider(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
