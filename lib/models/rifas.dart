import 'package:flutter/material.dart';
class Rifas {
  String id;
  String nome;
  String itens;
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