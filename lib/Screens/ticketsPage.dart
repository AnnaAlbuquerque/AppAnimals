import 'package:app_animals/Screens/animalAddPage.dart';
import 'package:flutter/material.dart';
import '../defaultValues/rifas_data.dart';
import '../widgets/TicketsItem.dart';

class TicketsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
            children: RIFAS_DATA
                .map((ticketData) => TicketItem(
                    ticketData.id,
                    ticketData.nome,
                    ticketData.itens,
                    ticketData.responsavel,
                    ticketData.descricao
                    ))
                .toList(),
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
