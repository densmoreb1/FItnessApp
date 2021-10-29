import 'package:flutter/material.dart';

class Enter extends StatefulWidget {
  const Enter({Key? key}) : super(key: key);

  @override
  _EnterState createState() => _EnterState();
}

class _EnterState extends State<Enter> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [Text('hello')],
    ));
  }
}
