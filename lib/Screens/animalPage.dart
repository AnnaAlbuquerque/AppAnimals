import 'package:flutter/material.dart';
import '../defaultValues/animal_data.dart';
import '../widgets/AnimalItem.dart';

class AnimalsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(66, 196, 157, 1),
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text(
            "Animais",
            style: TextStyle(
              fontFamily: 'Exo',
              fontSize: 18.0,
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: ANIMALS_DATA
                  .map((animalData) => AnimalItem(
                      animalData.id,
                      animalData.name,
                      animalData.species,
                      animalData.genre,
                      animalData.age,
                      animalData.hair,
                      animalData.status,
                      animalData.contactNumber,
                      animalData.picture))
                  .toList(),
            ),
            
          ],
        ));
  }
}
