// ignore_for_file: unused_import, unused_field, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:walletappui/de_animation.dart';
import 'package:walletappui/apropos_page.dart';
import 'package:walletappui/inscription.dart';
import 'package:walletappui/login.dart';
import 'package:walletappui/test.dart';

void main() {
  runApp(const MyWelcomePage());
}

class MyWelcomePage extends StatelessWidget {
  const MyWelcomePage({Key? key}) : super(key: key);

  static const String _title = 'Connexion';

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 130,
            horizontal: 80,
          ),
          child: Column(children: [
            DeAnimation(
              delay: 1200,
              child: Container(
                height: 180,
                child: Image.asset('lib/icons/logo.png'),
              ),
            ),
            SizedBox(height: 20),
            DeAnimation(
              delay: 3000,
              child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all((13)),
                    ),
                    child: Text('Ouvrir un compte',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyInscriptionPage()),
                      );
                    },
                  )),
            ),
            SizedBox(height: 20),
            DeAnimation(
              delay: 4000,
              child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all((13)),
                    ),
                    child: Text('Mon compte',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyTest()),
                      );
                    },
                  )),
            ),
            SizedBox(height: 20),
            DeAnimation(
              delay: 4000,
              child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all((13)),
                    ),
                    child: Text('Condition d utilisation',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        )),
                    onPressed: () {},
                  )),
            ),
            SizedBox(height: 20),
            DeAnimation(
              delay: 4000,
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all((13)),
                  ),
                  child: Text('A propos de nous',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyPropos(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 40),
            DeAnimation(
              delay: 2000,
              child: Container(
                height: 400,
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 60,
                ),
                child: Text("Alerte Infos",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.red,
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
