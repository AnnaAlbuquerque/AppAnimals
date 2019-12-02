import 'package:flutter/material.dart';

class Comunities{
  String id;
  String nome;
  String responsaveis;
  String descricao;
  String areaAbrange;
  String contas;

  Comunities({
    @required this.id,
    @required this.nome,
    @required this.responsaveis,
    this.descricao = "Sem descrição",
    this.areaAbrange,
    this.contas,
  });
}