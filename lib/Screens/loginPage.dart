import 'package:app_animals/Screens/bottomMenuPage.dart';
import 'package:app_animals/Screens/animalPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  //Setting orientation to be only portrait
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: ListView(
          children: <Widget>[
            Container(
              width: screen.width,
              height: screen.height * 0.07,
              decoration: BoxDecoration(
                color: Color.fromRGBO(66, 196, 157, 1),
              ),
            ),

            //Image
            Container(
              margin: EdgeInsets.only(top: screen.height * 0.08),
              padding: EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage('assets/images/Logo.png'), //Logo App
                height: screen.height * 0.25,
                width: screen.width * 0.25,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(
              height: screen.height * 0.1,
            ),

            //Email
            Container(
              padding: EdgeInsets.fromLTRB(
                  screen.width * 0.10, 0, 0, screen.height * 0.01),
              child: Row(
                children: <Widget>[
                  Text(
                    "Email",
                    style: TextStyle(
                        fontFamily: 'Exo',
                        fontSize: screen.height * 0.025,
                        color: Color.fromRGBO(66, 196, 157, 1)),
                  ),
                  SizedBox(
                    width: screen.width * 0.025,
                  ),
                  Container(
                    width: screen.width * 0.70,
                    height: screen.height * 0.05,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(196, 196, 196, 0.5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        errorMaxLines: 1,
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontFamily: 'Exo',
                        fontSize: screen.height * 0.025,
                        color: Colors.black,
                        inherit: false,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Password
            Container(
              padding: EdgeInsets.fromLTRB(
                  screen.width * 0.10, 0, 0, screen.height * 0.01),
              child: Row(
                children: <Widget>[
                  Text(
                    "Senha",
                    style: TextStyle(
                        fontFamily: 'Exo',
                        fontSize: screen.height * 0.025,
                        color: Color.fromRGBO(66, 196, 157, 1)),
                  ),
                  SizedBox(
                    width: screen.width * 0.025,
                  ),
                  Container(
                    width: screen.width * 0.70,
                    height: screen.height * 0.05,
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(196, 196, 196, 0.5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        errorMaxLines: 1,
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontFamily: 'Exo',
                        fontSize: screen.height * 0.025,
                        color: Colors.black,
                        inherit: false,
                        textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: screen.height * 0.015,
            ),

            //Forgot Password
            Container(
              width: screen.width * 0.75,
              padding: EdgeInsets.only(right: screen.width * 0.10),
              child: Text(
                "Esqueci minha senha",
                style: TextStyle(
                  color: Color.fromRGBO(82, 182, 204, 1),
                  fontFamily: 'Exo',
                  fontSize: screen.height * 0.018,
                ),
                textAlign: TextAlign.right,
              ),
            ),

            SizedBox(
              height: screen.height * 0.05,
            ),

            //Login Bottom
            InkWell(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomMenuPage()),
                );
              },
              child: Container(
                height: screen.height * 0.06,
                width: screen.width * 0.5,
                padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.fromLTRB(screen.width * 0.25, 0, screen.width * 0.25, 0),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: 'Exo',
                      fontSize: 15.0,
                      color: Colors.white,
                      inherit: false,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xff42C49D),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    )),
              ),
            ),

             SizedBox(
              height: screen.height * 0.11,
            ),

            Container(
              width: screen.width,
              height: screen.height * 0.07,
              decoration: BoxDecoration(
                color: Color.fromRGBO(66, 196, 157, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
