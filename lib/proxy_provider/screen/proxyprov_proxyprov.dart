import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Translations {
  final int _value;

  Translations(this._value);

  String get title => 'You clicked $_value times';
}

class ProxyProvProxyProv extends StatefulWidget {
  const ProxyProvProxyProv({Key? key}) : super(key: key);

  @override
  State<ProxyProvProxyProv> createState() => _ProxyProvProxyProvState();
}

class _ProxyProvProxyProvState extends State<ProxyProvProxyProv> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
      print('counter : $counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProxyProvider ProxyProvider'),
      ),
      body: Center(
        child: MultiProvider(
          providers: [
            ProxyProvider0<int>(update: (_, __) => counter),
            ProxyProvider<int, Translations>(update: (_, value, __) => Translations(value))
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShowTranslations(),
              SizedBox(
                height: 20,
              ),
              IncreaseButton(increment: increment),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowTranslations extends StatelessWidget {
  const ShowTranslations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = context.watch<Translations>().title;

    return Text(title, style: TextStyle(fontSize: 28));
  }
}


class IncreaseButton extends StatelessWidget {
  final VoidCallback increment;

  const IncreaseButton({Key? key, required this.increment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: increment,
      child: Text(
        'INCREASE',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
