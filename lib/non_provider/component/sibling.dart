import 'package:flutter/material.dart';

class Sibling extends StatelessWidget {
  const Sibling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      padding: const EdgeInsets.all(10),
      child: Text('sibling', style: TextStyle(fontSize: 24),),
    );
  }
}
