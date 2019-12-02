import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app_animals/models/animals.dart';
import 'package:app_animals/defaultValues/animal_data.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:app_animals/Screens/animalDetailsPage.dart';

class AnimalsAddPage extends StatefulWidget {
  @override
  _AnimalsAddPageState createState() => _AnimalsAddPageState();
}

class _AnimalsAddPageState extends State<AnimalsAddPage> {
  String id;
  String name;
  String specie;
  String genre;
  String age;
  String hair;
  String status;
  String contactNumber;
  String picture;
  Animal animal;

  final myController = TextEditingController();

  final _ageFocusNode = FocusNode();
  final _pelagemFocusNode = FocusNode();
  final _statusFocusNode = FocusNode();
  final _numberFocusNode = FocusNode();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 196, 157, 1),
        centerTitle: true,
        title: Text(
          "Novo Animal",
          style: TextStyle(
            fontFamily: 'Exo',
            fontSize: 18.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(25, 15, 0, 0),
              height: screen.width * 0.40,
              width: screen.width * 0.40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: Colors.grey,
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: screen.height * 0.02,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Espécie:",
                            style: TextStyle(
                              fontFamily: 'Exo',
                              fontSize: 20.0,
                              color: Color.fromRGBO(66, 196, 157, 1),
                            ),
                          ),
                          RadioButtonGroup(
                            orientation: GroupedButtonsOrientation.HORIZONTAL,
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            labelStyle: TextStyle(
                              fontFamily: 'Exo',
                              fontSize: 12.0,
                              color: Color.fromRGBO(66, 196, 157, 1),
                            ),
                            labels: <String>[
                              "Cachorro",
                              "Gato",
                            ],
                            onSelected: (val) => specie = val,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Nome",
                              style: TextStyle(
                                  fontFamily: 'Exo',
                                  fontSize: screen.height * 0.025,
                                  color: Color.fromRGBO(66, 196, 157, 1)),
                            ),
                            SizedBox(
                              width: screen.width * 0.025,
                            ),
                            Container(
                              width: screen.width * 0.70,
                              height: screen.height * 0.05,
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: TextFormField(
                                onSaved: (val) => name = val,
                                onFieldSubmitted: (_) {
                                  FocusScope.of(context)
                                      .requestFocus(_ageFocusNode);
                                },
                                decoration: InputDecoration(
                                  errorMaxLines: 1,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  fontFamily: 'Exo',
                                  fontSize: screen.height * 0.025,
                                  color: Colors.black,
                                  textBaseline: TextBaseline.alphabetic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Gẽnero:",
                            style: TextStyle(
                              fontFamily: 'Exo',
                              fontSize: 20.0,
                              color: Color.fromRGBO(66, 196, 157, 1),
                            ),
                          ),
                          RadioButtonGroup(
                            orientation: GroupedButtonsOrientation.HORIZONTAL,
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            labelStyle: TextStyle(
                              fontFamily: 'Exo',
                              fontSize: 12.0,
                              color: Color.fromRGBO(66, 196, 157, 1),
                            ),
                            labels: <String>[
                              "Macho",
                              "Fêmea",
                            ],
                            onSelected: (val) => genre = val,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Idade",
                              style: TextStyle(
                                  fontFamily: 'Exo',
                                  fontSize: screen.height * 0.025,
                                  color: Color.fromRGBO(66, 196, 157, 1)),
                            ),
                            SizedBox(
                              width: screen.width * 0.025,
                            ),
                            Container(
                              width: screen.width * 0.70,
                              height: screen.height * 0.05,
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: TextFormField(
                                onSaved: (val) => age = val,
                                focusNode: _ageFocusNode,
                                onFieldSubmitted: (_) {
                                  FocusScope.of(context)
                                      .requestFocus(_pelagemFocusNode);
                                },
                                decoration: InputDecoration(
                                  errorMaxLines: 1,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  fontFamily: 'Exo',
                                  fontSize: screen.height * 0.025,
                                  color: Colors.black,
                                  textBaseline: TextBaseline.alphabetic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Pelagem",
                              style: TextStyle(
                                  fontFamily: 'Exo',
                                  fontSize: screen.height * 0.025,
                                  color: Color.fromRGBO(66, 196, 157, 1)),
                            ),
                            SizedBox(
                              width: screen.width * 0.025,
                            ),
                            Container(
                              width: screen.width * 0.65,
                              height: screen.height * 0.05,
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: TextFormField(
                                onSaved: (val) => hair = val,
                                focusNode: _pelagemFocusNode,
                                onFieldSubmitted: (_) {
                                  FocusScope.of(context)
                                      .requestFocus(_statusFocusNode);
                                },
                                decoration: InputDecoration(
                                  errorMaxLines: 1,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  fontFamily: 'Exo',
                                  fontSize: screen.height * 0.025,
                                  color: Colors.black,
                                  textBaseline: TextBaseline.alphabetic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Status",
                              style: TextStyle(
                                  fontFamily: 'Exo',
                                  fontSize: screen.height * 0.025,
                                  color: Color.fromRGBO(66, 196, 157, 1)),
                            ),
                            SizedBox(
                              width: screen.width * 0.025,
                            ),
                            Container(
                              width: screen.width * 0.70,
                              height: screen.height * 0.05,
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: TextFormField(
                                onSaved: (val) => status = val,
                                focusNode: _statusFocusNode,
                                onFieldSubmitted: (_) {
                                  FocusScope.of(context)
                                      .requestFocus(_numberFocusNode);
                                },
                                decoration: InputDecoration(
                                  errorMaxLines: 1,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  fontFamily: 'Exo',
                                  fontSize: screen.height * 0.025,
                                  color: Colors.black,
                                  textBaseline: TextBaseline.alphabetic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Número Contato",
                              style: TextStyle(
                                  fontFamily: 'Exo',
                                  fontSize: screen.height * 0.025,
                                  color: Color.fromRGBO(66, 196, 157, 1)),
                            ),
                            SizedBox(
                              width: screen.width * 0.025,
                            ),
                            Container(
                              width: screen.width * 0.52,
                              height: screen.height * 0.05,
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(196, 196, 196, 0.5),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: TextFormField(
                                onSaved: (val) => contactNumber = val,
                                focusNode: _numberFocusNode,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  errorMaxLines: 1,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(
                                  fontFamily: 'Exo',
                                  fontSize: screen.height * 0.025,
                                  color: Colors.black,
                                  textBaseline: TextBaseline.alphabetic,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screen.width * 0.030,
                      ),
                      InkWell(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        onTap: () {
                          id = (ANIMALS_DATA.length + 1).toString();
                          picture = 'assets/pictures/defaultPicture.jpeg';
                          animal = new Animal(
                              id: id,
                              name: name,
                              species: specie,
                              genre: genre,
                              age: age,
                              hair: hair,
                              status: status,
                              contactNumber: contactNumber,
                              picture: picture);
                          ANIMALS_DATA.add(animal);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AnimalsDetailsPage(id, name, specie,genre,age,hair,status,contactNumber, picture)),
                          );
                        },
                        child: Container(
                          height: screen.height * 0.06,
                          width: screen.width * 0.5,
                          padding: EdgeInsets.all(15.0),
                          margin: EdgeInsets.fromLTRB(
                              screen.width * 0.25, 0, screen.width * 0.25, 0),
                          child: Center(
                            child: Text(
                              "Adicionar",
                              style: TextStyle(
                                fontFamily: 'Exo',
                                fontSize: 15.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff42C49D),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              )),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: screen.height * 0.035,
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
      ),
    );
  }
}
