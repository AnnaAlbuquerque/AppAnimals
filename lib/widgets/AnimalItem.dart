import 'package:flutter/material.dart';
import '../Screens/animalDetailsPage.dart';

class AnimalItem extends StatelessWidget {
  String id;
  String name;
  String specie;
  String genre;
  String age;
  String hair;
  String status;
  String contactNumber;
  String picture;


  AnimalItem(this.id,this.name, this.specie, this.genre, this.age, this.hair, this.status, this.contactNumber, this.picture);

  void selectAnimal(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return AnimalsDetailsPage(id, name, specie, genre, age, hair, status, contactNumber, picture);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectAnimal(context),
      splashColor: Colors.grey,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage(picture),
                backgroundColor: Color.fromRGBO(66, 196, 157, 1),
                radius: 30,
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      specie,
                      style: TextStyle(
                        fontFamily: 'Exo',
                        color: Color.fromRGBO(66, 196, 157, 1),
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "(" + name + ")",
                      style: TextStyle(
                        fontFamily: 'Exo',
                        color: Color.fromRGBO(66, 196, 157, 1),
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  genre,
                  style: TextStyle(
                    fontFamily: 'Exo',
                    color: Color.fromRGBO(66, 196, 157, 1),
                    fontSize: 18.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
