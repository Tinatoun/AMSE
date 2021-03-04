import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/exo.dart';

// ignore: camel_case_types
class Liste_exo extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final List<Exo> tous_les_exos;

  // ignore: non_constant_identifier_names
  Liste_exo({Key key, @required this.tous_les_exos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tous les exos'),
      ),
      body: ListView.builder(
        itemCount: tous_les_exos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tous_les_exos[index].name),
            subtitle: Text(tous_les_exos[index].description),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: tous_les_exos[index].buildfunction,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
