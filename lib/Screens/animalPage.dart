import 'package:app_animals/Screens/animalAddPage.dart';
import 'package:flutter/material.dart';
import '../defaultValues/animal_data.dart';
import '../widgets/AnimalItem.dart';

class AnimalsPage extends StatefulWidget {
  @override
  _AnimalsPageState createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {
  int _selectedPage = 0;
  Widget build(BuildContext context) {
     final screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 196, 157, 1),
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text(
          "Animais",
          style: TextStyle(
            fontFamily: 'Exo',
            fontSize: 18.0,
          ),
        ),
      ),
      body: ListView(
        children: ANIMALS_DATA
            .map((animalData) => AnimalItem(
                animalData.id,
                animalData.name,
                animalData.species,
                animalData.genre,
                animalData.age,
                animalData.hair,
                animalData.status,
                animalData.contactNumber,
                animalData.picture))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AnimalsAddPage()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(66, 196, 157, 1),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(66, 196, 157, 1),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          currentIndex: _selectedPage,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/animals.png",height: screen.height *0.03,), title: Text('Animais')),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/comunities.png",height: screen.height *0.03,), title: Text('Comunidades')),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/map.png",height: screen.height *0.03,), title: Text('Mapa')),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/tickets.png",height: screen.height *0.03,), title: Text('Rifas')),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/calendar.png",height: screen.height *0.03,), title: Text('Calendário')),
          ],
        ),
      ),
    );
  }
}
