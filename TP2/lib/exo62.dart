import 'package:flutter/material.dart';
import 'package:flutter_application_1/tableau.dart';
import 'tableau.dart';

class Exo62 extends StatefulWidget {
  Exo62({Key key}) : super(key: key);

  @override
  _Exercice6bState createState() => _Exercice6bState();
}

class _Exercice6bState extends State<Exo62> {
  Tableau board = Tableau(game: true, tilesNumber: 4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercice 6.2'),
      ),
      body: Column(children: <Widget>[
        board.build(),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (board.tilesNumber > 2) {
                        board.tilesNumber--;
                      }
                    });
                  },
                  child: Text('-')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (board.tilesNumber < 10) {
                        board.tilesNumber++;
                      }
                    });
                  },
                  child: Text('+'))
            ])
      ]),
    );
  }
}
