import 'package:app_animals/Screens/animalAddPage.dart';
import 'package:app_animals/models/comunities.dart';
import 'package:flutter/material.dart';
import '../defaultValues/animal_data.dart';
import '../widgets/AnimalItem.dart';


class ComunitiesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        // children: ANIMALS_DATA
        //     .map((animalData) => AnimalItem(
        //         animalData.id,
        //         animalData.name,
        //         animalData.species,
        //         animalData.genre,
        //         animalData.age,
        //         animalData.hair,
        //         animalData.status,
        //         animalData.contactNumber,
        //         animalData.picture))
        //     .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => ComunitieAddPage()),
          // );
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(66, 196, 157, 1),
      ),
    );
  }
}
