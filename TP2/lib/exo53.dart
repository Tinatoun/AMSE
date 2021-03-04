import 'package:flutter/material.dart';
import 'tableau.dart';

class Exo53 extends StatefulWidget {
  Exo53({Key key}) : super(key: key);

  @override
  _Exercice5cState createState() => _Exercice5cState();
}

class _Exercice5cState extends State<Exo53> {
  Tableau board =
      Tableau(game: false, tilesNumber: 3, imageSrc: 'images/empreintes.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercice 5.3'),
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
