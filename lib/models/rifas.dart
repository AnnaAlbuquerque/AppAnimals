import 'package:flutter/material.dart';
class Rifas {
  String id;
  String nome;
  var itens = new List();
  String responsavel;
  String descricao;

  Rifas({
    @required this.id,
    this.nome = "Sem nome",
    @required this.itens,
    @required this.responsavel,
    this.descricao  = "Sem descrição"
  });
}