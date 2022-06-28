import 'package:flutter/material.dart';

void main() {
  runApp(const Bytebankapp());
}

class Bytebankapp extends StatelessWidget {
  const Bytebankapp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('images/bytebank_logo.png'),
            // ignore: avoid_unnecessary_containers
            Container(
              color: Colors.green,
              child: Column(
                children: const <Widget>[
                  Icon(Icons.people),
                  Text('Contacts'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
