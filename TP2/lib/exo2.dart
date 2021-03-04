import 'package:flutter/material.dart';
import 'image.dart';
import 'slider.dart';

class Exo2 extends StatefulWidget {
  Exo2({Key key}) : super(key: key);

  @override
  _Exo2State createState() => _Exo2State();
}

class _Exo2State extends State<Exo2> {
  MyImage image = MyImage(asset: 'images/empreintes.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exercice 2'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image.build(),
              Table(
                columnWidths: {0: FlexColumnWidth(1), 1: FlexColumnWidth(4)},
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(children: [
                    Text('Rotation axe X : '),
                    MySlider(
                      appel: settingX,
                    )
                  ]),
                  TableRow(children: [
                    Text('Rotation axe Y : '),
                    MySlider(
                      appel: settingY,
                    )
                  ]),
                  TableRow(children: [
                    Text('Rotation axe Z : '),
                    MySlider(
                      appel: settingZ,
                    )
                  ]),
                  TableRow(children: [
                    Text('Taille : '),
                    MySlider(
                      appel: settingS,
                    )
                  ]),
                ],
              ),
            ],
          ),
        ));
  }

  void settingX(double bistouflyX) {
    setState(() {
      image.x = bistouflyX / 100 * 6.28;
    });
  }

  void settingY(double bistouflyY) {
    setState(() {
      image.y = bistouflyY / 100 * 6.28;
    });
  }

  void settingZ(double bistouflyZ) {
    setState(() {
      image.z = bistouflyZ / 100 * 6.28;
    });
  }

  void settingS(double bistouflyS) {
    setState(() {
      image.s = 1 - bistouflyS / 100;
    });
  }
}
