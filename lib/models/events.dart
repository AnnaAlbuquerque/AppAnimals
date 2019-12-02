import 'package:flutter/material.dart';
class Events {
  String id;
  String nome;
  DateTime date;
  String descricao;
  String endereco;

  Events({
    @required this.id,
    this.nome = "Sem nome",
    @required this.date,
    this.descricao = "Sem Descrição",
    @required this.endereco,
  });
}