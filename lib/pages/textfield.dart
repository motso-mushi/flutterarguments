import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class flutterarguments  extends StatelessWidget {
  const flutterarguments ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roba code  ngwanaka'),
      ),
        body: Center(
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'name',
            ),
          ),
        )
    );
  }
}
