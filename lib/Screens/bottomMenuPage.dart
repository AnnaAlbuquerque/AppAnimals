import 'package:app_animals/Screens/calendarPage.dart';
import 'package:app_animals/Screens/comunitiesPage.dart';
import 'package:app_animals/Screens/mapPage.dart';
import 'package:app_animals/Screens/ticketsPage.dart';
import 'package:app_animals/Screens/animalPage.dart';
import 'package:flutter/material.dart';

class BottomMenuPage extends StatefulWidget {
  BottomMenuPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() => _BottomMenuPageState();
}

class _BottomMenuPageState extends State<BottomMenuPage> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  String title (page){
    switch(page){
      case 0:
        return "Animais";
        break;
      case 1:
        return "Comunidades";
        break;
      case 2:
        return "Mapa";
        break;
      case 3:
        return "Rifas";
        break;
      case 4:
        return "Calendário";
        break;
    }

  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(66, 196, 157, 1),
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text(
          title(_page),
          style: TextStyle(
            fontFamily: 'Exo',
            fontSize: 18.0,
          ),
        ),
      ),
      body: PageView(
        children: <Widget>[
          AnimalsPage(),
          ComunitiesPage(),
          MapPage(),
          TicketsPage(),
          CalendarPage()
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(66, 196, 157, 1),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          currentIndex: _page,
          onTap: navigationTapped,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/animals.png",
                  height: screen.height * 0.03,
                ),
                title: Text('Animais')),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/comunities.png",
                  height: screen.height * 0.03,
                ),
                title: Text('Comunidades')),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/map.png",
                  height: screen.height * 0.03,
                ),
                title: Text('Mapa')),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/tickets.png",
                  height: screen.height * 0.03,
                ),
                title: Text('Rifas')),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/images/calendar.png",
                  height: screen.height * 0.03,
                ),
                title: Text('Animais')),
          ],
        ),
      ),
    );
  }
}
