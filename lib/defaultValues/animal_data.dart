import 'package:flutter/material.dart';
import '../models/animals.dart';


List<Animal>ANIMALS_DATA = [
  Animal(
    id: "01",
    name: "Max",
    species: "Cachorro",
    genre: "Macho",
    age: "3 meses",
    hair: "Pêlo curto chocolate",
    status: "Em lar temporário",
    contactNumber: "(xx) xxxxx-xxxx",
    picture: 'assets/pictures/Max.jpeg',
  ),

  Animal(
    id: "02",
    name: "Nina",
    species: "Gato",
    genre: "Fêmea",
    age: "5 meses",
    hair: "Pêlo curto preto",
    status: "Em lar temporário",
    contactNumber: "(xx) xxxxx-xxxx",
    picture: 'assets/pictures/Nina.jpg',
  ),

  Animal(
    id: "03",
    name: "Biscoito",
    species: "Gato",
    genre: "Macho",
    age: "5 meses",
    hair: "Pêlo curto laranja",
    status: "Encontrado sem coleira",
    picture: 'assets/pictures/Biscoito.jpeg',

  ),

  Animal(
    id: "04",
    name: "Bela",
    species: "Cachorro",
    genre: "Fêmea",
    age: "2 anos",
    hair: "pelo curto cinza",
    status: "Procura-se",
    picture: 'assets/pictures/Bela.jpg'
  )
];