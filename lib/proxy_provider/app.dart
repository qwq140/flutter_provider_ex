import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/change_notifier/view/home_page.dart';

class ProxyProviderApp extends StatelessWidget {
  const ProxyProviderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
