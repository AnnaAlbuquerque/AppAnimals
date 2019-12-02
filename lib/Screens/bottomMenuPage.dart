import 'package:flutter/material.dart';



class AnimalsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimalsPageState();
  }
}

class _AnimalsPageState extends State<AnimalsPage> {
  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromRGBO(66, 196, 157, 1),
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text(
            "Animais",
            style: TextStyle(
              fontFamily: 'Exo',
              fontSize: screen.height * 0.030,
            ),
          ),

        ),

        body: ListView(
          children: <Widget>[
            
          ]
        ),

        bottomNavigationBar:  Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color.fromRGBO(66, 196, 157, 1),
          ),
          child: BottomNavigationBar(
          elevation: 0.0,
          currentIndex: _selectedPage,
          onTap: (int index){
            setState(() {
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
            ),
          ],
        ),
        ),
        
      ),
    );
  }
}
