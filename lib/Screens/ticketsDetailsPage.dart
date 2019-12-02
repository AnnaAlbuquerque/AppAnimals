import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TicketDetailsPage extends StatelessWidget {
  String id;
  String nome;
  String itens;
  String responsavel;
  String descricao;

  TicketDetailsPage(this.id, this.nome, this.itens, this.responsavel, this.descricao);

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 196, 157, 1),
        centerTitle: true,
        title: Text(
          "Detalhes Rifa",
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
                  width: screen.width * 0.83,
                  height: screen.height * 0.30,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Itens: " + itens,
                  style: TextStyle(
                    fontFamily: 'Exo',
                    color: Color.fromRGBO(66, 196, 157, 1),
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Responsável: " + responsavel,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Exo',
                    color: Color.fromRGBO(66, 196, 157, 1),
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
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
              ],
            ),
          ),
          SizedBox(
            height: screen.height * 0.268,
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
