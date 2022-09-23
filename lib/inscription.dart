// ignore_for_file: unused_import, use_key_in_widget_constructors, library_private_types_in_public_api, unused_local_variable, prefer_const_constructors, unnecessary_new, avoid_print

import 'package:flutter/material.dart';
import 'package:walletappui/home_page.dart';
import 'package:walletappui/login.dart';
import 'package:walletappui/test.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyInscriptionPage());
}

class MyInscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
      // theme: ThemeData(
      //   primarySwatch: Colors.yellow,
      // ),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  TextEditingController nom = new TextEditingController();
  TextEditingController numero = new TextEditingController();
  TextEditingController mdp = new TextEditingController();
  TextEditingController cmdp = new TextEditingController();

  //fonctions
  //fonction pour sup les champs
  void clean() {
    nom.clear();
    numero.clear();
    mdp.clear();
    cmdp.clear();
  }

  Future senddata() async {
    final response = await http.post(
        Uri.parse("http://s-p4.com/ekoun/traitement/insertion.php"),
        body: {
          "nom": nom.text,
          "numero": numero.text,
          "mdp": mdp.text,
          "cmdp": cmdp.text,
        });
  }

  //fin des fonctions
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Créer un compte',
            style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
            ),
            Image.asset(
              'lib/icons/logo.png',
              height: 180,
              width: 180,
            ),
            SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: nom,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nom et Prénoms',
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: numero,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Numéro',
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                obscureText: true,
                controller: mdp,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mot de passe',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                obscureText: true,
                controller: cmdp,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirmer Mot de passe',
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text(
                    'Valider',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    senddata();
                    clean();
                    //routes pour aller sur page de connexion
                    final snackBar = SnackBar(
                      content: const Text('Votre compte a été bien créé'),
                      action: SnackBarAction(
                        label: 'Quitter',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyTest()),
                          );
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                )),
          ],
        )));
  }
}
