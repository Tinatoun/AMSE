import 'package:flutter/material.dart';
import 'package:tp1/models/dancetutorial.dart';

Widget detailsList(List<Tutorial> type, int index) {
  return Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: true,
      title: Text('${type[index].name}'),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.favorite_outline_rounded),
            tooltip: 'Ajouter aux favoris',
            onPressed: () {})
      ],
    ),
    body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          leading: new Container(),
          stretch: true,
          onStretchTrigger: () {
            return;
          },
          expandedHeight: 200.0,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              fit: StackFit.expand,
              children: [
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.0, 0.5),
                        end: Alignment(0.0, 0.0),
                        colors: <Color>[
                          Color(0xFFFFFFFF),
                          Color(0xFF7FFFFF),
                        ]),
                  ),
                ),
                Image(image: AssetImage(tutorials[index].visual)),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(children(type, index)),
        ),
      ],
    ),
  );
}

List<Widget> children(List<Tutorial> type, int index) {
  List<ListTile> retour = [];
  retour.addAll([
    ListTile(
      title: Text(
        'Description',
        style: TextStyle(fontSize: 20, color: Colors.blueGrey),
      ),
      subtitle: Text('${type[index].caption}'),
    ),
    ListTile(
      title: Text(
        'Teacher',
        style: TextStyle(fontSize: 30, color: Colors.black),
      ),
      subtitle: Text('${type[index].teacher}'),
    ),
    ListTile(
      title: Text(
        'Dance style',
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      subtitle: Text('${type[index].style}'),
    ),
    ListTile(
        title: Text(
          'Type',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        subtitle: Text('${type[index].type}')),
    ListTile(
      title: Text(
        'Difficulty',
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      subtitle: Text('${type[index].difficulty}'),
    ),
    ListTile(
      title: Text(
        'Artist',
        style: TextStyle(fontSize: 20, color: Colors.deepOrange),
      ),
      subtitle: Text('${type[index].singer}'),
    ),
    ListTile(
      title: Text(
        'Music',
        style: TextStyle(fontSize: 20, color: Colors.deepOrange),
      ),
      subtitle: Text('${type[index].musicname}'),
    ),
  ]);
  return (retour);
}
