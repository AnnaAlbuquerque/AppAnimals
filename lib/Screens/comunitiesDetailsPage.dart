import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ComunitiesDetailsPage extends StatelessWidget {
  String id;
  String name;
  String responsible;
  String descricao;
  String area;
  String accounts;

  ComunitiesDetailsPage(this.id, this.name, this.responsible, this.descricao,this.area, this.accounts);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 196, 157, 1),
        centerTitle: true,
        title: Text(
          "Detalhes Comunidade",
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
                Text(
                  name + " (ID: "+ id+")",
                  style: TextStyle(
                    fontFamily: 'Exo',
                    color: Color.fromRGBO(66, 196, 157, 1),
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Responsável: " + responsible,
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
                  "Descrição: " + descricao,
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
                  "Áreas que abrange:  " + area,
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
                  "Contas: " + accounts,
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
              ],
            ),
          ),
          SizedBox(
            height: screen.height * 0.522,
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
