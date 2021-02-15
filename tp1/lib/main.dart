import 'package:flutter/material.dart';
import 'Nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome glad to see you here!',
      color: Colors.grey,
      home: Nav(),
    );
  }
}
