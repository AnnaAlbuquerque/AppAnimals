import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AnimalsDetailsPage extends StatelessWidget {
  String id;
  String name;
  String specie;
  String genre;
  String age;
  String hair;
  String status;
  String contactNumber;
  String picture;

  AnimalsDetailsPage(this.id, this.name, this.specie, this.genre, this.age,
      this.hair, this.status, this.contactNumber, this.picture);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 196, 157, 1),
        centerTitle: true,
        title: Text(
          "Detalhes Animais",
          style: TextStyle(
            fontFamily: 'Exo',
            fontSize: 18.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(35, 45, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage(picture),
                        backgroundColor: Color.fromRGBO(66, 196, 157, 1),
                        radius: 70,
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Text(
                        specie,
                        style: TextStyle(
                          fontFamily: 'Exo',
                          color: Color.fromRGBO(66, 196, 157, 1),
                          fontSize: 24.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "(" + name + ")",
                        style: TextStyle(
                          fontFamily: 'Exo',
                          color: Color.fromRGBO(66, 196, 157, 1),
                          fontSize: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Gênero: " + genre,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Exo',
                    color: Color.fromRGBO(66, 196, 157, 1),
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Idade: " + age,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Exo',
                    color: Color.fromRGBO(66, 196, 157, 1),
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Pelagem: " + hair,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Exo',
                    color: Color.fromRGBO(66, 196, 157, 1),
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Status: " + status,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Exo',
                    color: Color.fromRGBO(66, 196, 157, 1),
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Número para contato: " + contactNumber,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Exo',
                    color: Color.fromRGBO(66, 196, 157, 1),
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screen.height * 0.347,
          ),
          Container(
            width: screen.width,
            height: screen.height * 0.065,
            decoration: BoxDecoration(
              color: Color.fromRGBO(66, 196, 157, 1),
            ),
          )
        ],
      ),
    );
  }
}
