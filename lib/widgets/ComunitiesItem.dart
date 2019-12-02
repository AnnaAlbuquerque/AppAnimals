import 'package:flutter/material.dart';
import '../Screens/animalDetailsPage.dart';

class ComunitieItem extends StatelessWidget {

  String id;
  String name;
  String responsible;
  String descricao;
  String area;
  String accounts;



  ComunitieItem(this.id,this.name, this.responsible, this.descricao, this.area, this.accounts);

  // void selectComunitie(BuildContext ctx){
  //   Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
  //     return ComunitieDetailsPage(id, name, responsible, descricao, area, accounts);
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { }, //=> selectComunitie(context),
      splashColor: Colors.grey,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      name,
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
                      "(ID: " + id + ")",
                      style: TextStyle(
                        fontFamily: 'Exo',
                        color: Color.fromRGBO(66, 196, 157, 1),
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                Text(
                  responsible,
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
