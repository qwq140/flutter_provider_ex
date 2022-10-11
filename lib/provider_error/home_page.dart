import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/provider_error/counter_page.dart';
import 'package:flutter_provider_ex/provider_error/handle_dialog_page.dart';
import 'package:flutter_provider_ex/provider_error/navigate_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            shrinkWrap: true,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> CounterPage()));
                },
                child: Text(
                  'Counter Page',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> HandleDialogPage()));
                },
                child: Text(
                  'HandleDialogPage',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> NavigatePage()));
                },
                child: Text(
                  'Navigate Page',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
