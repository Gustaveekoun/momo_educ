// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors, unused_import, non_constant_identifier_names, unused_local_variable, avoid_print
import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:walletappui/home_page.dart';
import 'package:walletappui/inscription.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyAffichage());
}

class MyAffichage extends StatelessWidget {
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
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  List MesUtilisateurs = List.filled(3, []);
  //String TheId = "";
  // End variables

  //Functions'

  Future DelData(String TheId) async {
    final response = await http.post(
        Uri.parse("http://s-p4.com/ekoun/traitement/affichage.php"),
        body: {
          "id_en": TheId,
        });
  }

  // Future getMemo() async {
  //   final response = await http
  //       .get(Uri.parse("http://s-p4.com/ekoun/traitement/affichage.php"));
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       MesUtilisateurs = json.decode(response.body);
  //     });
  //     print(MesUtilisateurs);
  //     return MesUtilisateurs;
  //   }
  // }
  Future getData() async {
    var url = Uri.parse("http://s-p4.com/ekoun/traitement/affichage.php");
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    print(data.toString());
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: ListView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: [
          for (int i = 0; i < MesUtilisateurs.length; i++)
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.note),
                    title: Text(
                        MesUtilisateurs[i]['nom']), //Titre en fonction index
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text('Delete'),
                        onPressed: () {
                          DelData(MesUtilisateurs[i]['id_en']);
                          getData();
                        },
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // This gives the back button:
          // Navigator.of(context).pushNamed('/memo');
          // This doesn't give the back button (it replaces)
          //Navigator.pushReplacementNamed(context, '/login');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
