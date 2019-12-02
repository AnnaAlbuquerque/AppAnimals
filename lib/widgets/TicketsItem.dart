import 'package:flutter/material.dart';
import '../Screens/ticketsDetailsPage.dart';

class TicketItem extends StatelessWidget {
  String id;
  String nome;
  String itens;
  String responsavel;
  String descricao;

  TicketItem(this.id, this.nome, this.itens, this.responsavel, this.descricao);

  void selectTicket(BuildContext ctx){
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
      return TicketDetailsPage(id, nome, itens, responsavel, descricao);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTicket(context),
      splashColor: Colors.grey,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  itens,
                  style: TextStyle(
                    fontFamily: 'Exo',
                    color: Color.fromRGBO(66, 196, 157, 1),
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  responsavel,
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
