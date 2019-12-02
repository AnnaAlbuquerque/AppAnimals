import 'package:flutter/material.dart';

class Comunities{
  String id;
  String nome;
  var responsaveis = new List();
  String descricao;
  var areaAbrange = new List();
  var contas = new List();

  Comunities({
    @required this.id,
    @required this.nome,
    @required this.responsaveis,
    this.descricao = "Sem descrição",
    this.areaAbrange,
    this.contas,
  });
}