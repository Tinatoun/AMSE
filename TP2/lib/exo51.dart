import 'package:flutter/material.dart';

class Exo51 extends StatelessWidget {
  final List<Color> tilesColor = <Color>[
    Colors.blue[900],
    Colors.blue[800],
    Colors.blue[700],
    Colors.blue[600],
    Colors.blue[500],
    Colors.blue[400],
    Colors.blue[300],
    Colors.blue[200],
    Colors.blue[100],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exercice 5.1'),
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: List.generate(9, (index) {
              int tileNumber = index + 1;

              return Container(
                padding: const EdgeInsets.all(8),
                child: Center(child: Text('$tileNumber')),
                color: tilesColor[index],
              );
            })));
  }
}
