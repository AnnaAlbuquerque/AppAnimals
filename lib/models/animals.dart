import 'package:flutter/material.dart';

class Animal {
  String id;
  String species;
  String name;
  String genre;
  String age;
  String hair;
  String status;
  String location;
  String contactNumber;
  String picture;

  Animal(
      {@required this.id,
      @required this.species,
      this.name = "Sem nome",
      this.genre = "Não sabe",
      this.age = "Não sabe",
      this.hair = "Não especificado",
      @required this.status,
      this.location = "Não especificada",
      this.contactNumber = "Não possui",
      this.picture = "assets/pictures/defaultPicture.jpeg"}
      );
}
