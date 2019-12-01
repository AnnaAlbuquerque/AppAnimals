import 'package:flutter/material.dart';
import 'package:app_animals/Screens/loginPage.dart';
import 'package:app_animals/Screens/animalsPage.dart';


//Initial page is LoginPage 
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      home: AnimalsPage(),
    );
  }
}

