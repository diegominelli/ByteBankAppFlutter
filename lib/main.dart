import 'package:bytebankappflutter/screens/dashboard.dart';
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.blueAccent[700],
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blueAccent[700],
          ),
        ),
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary),
      ),
      home: const Dashboard(),
    );
  }
}
