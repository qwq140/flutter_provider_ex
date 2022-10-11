import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/provider_not_found/model/foo.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('provider not found exception'),
      ),
      body: ChangeNotifierProvider<Foo>(
        create: (context) => Foo(),
        child: Consumer<Foo>(
          builder: (BuildContext context, Foo foo, _) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${foo.value}',
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      foo.changeValue();
                    },
                    child: Text(
                      'Change Value',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
