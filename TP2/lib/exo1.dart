import 'package:flutter/material.dart';

class Exo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Exo 1")),
        body: Center(
          child: Image(image: AssetImage('images/empreintes.jpg')),
        ));
  }
}
