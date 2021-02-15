import 'package:flutter/material.dart';
import 'package:tp1/models/dancetutorial.dart';
import 'package:tp1/models/details.dart';

class Videos extends StatelessWidget {
  Videos({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey);
  }

  static List<Widget> widget = <Widget>[
    Text("Let's get started!"),
    ListView.builder(
        itemCount: tutorials.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => detailsList(tutorials, index),
                    ),
                  );
                },
                title: Text(tutorials[index].name),
                leading: Image(image: AssetImage(tutorials[index].visual))),
          );
        })
  ];
}
