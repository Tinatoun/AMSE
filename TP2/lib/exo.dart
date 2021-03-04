import 'exo1.dart';
import 'exo2.dart';
import 'exo4.dart';
import 'exo51.dart';
import 'exo52.dart';
import 'exo53.dart';
import 'exo61.dart';
import 'exo62.dart';
import 'exo7.dart';

class Exo {
  final name;
  final description;
  final buildfunction;

  Exo({this.name, this.description, this.buildfunction});
}

List<Exo> exos = [
  Exo(
    name: "Exo 1",
    description: "Afficher une image",
    buildfunction: (context) => Exo1(),
  ),
  Exo(
    name: "Exo 2",
    description: "Transformer une image",
    buildfunction: (context) => Exo2(),
  ),
  Exo(
    name: "Exo 4",
    description: "Affichage d'une tuille (un morceau d'image)",
    buildfunction: (context) => Exo4(),
  ),
  Exo(
    name: "Exo 5.1",
    description: "Génération du plateau de tuile v1",
    buildfunction: (context) => Exo51(),
  ),
  Exo(
    name: "Exo 5.2",
    description: "Génération du plateau de tuile v2",
    buildfunction: (context) => Exo52(),
  ),
  Exo(
    name: "Exo 5.3",
    description: "Génération du plateau de tuile v3",
    buildfunction: (context) => Exo53(),
  ),
  Exo(
    name: "Exo 6.1",
    description: "Animation d'une tuile v1",
    buildfunction: (context) => Exo61(),
  ),
  Exo(
    name: "Exo 6.2",
    description: "Animation d'une tuile v2",
    buildfunction: (context) => Exo62(),
  ),
  Exo(
    name: "Exo 7",
    description: "Jeu de taquin",
    buildfunction: (context) => Exo7(),
  ),
];
