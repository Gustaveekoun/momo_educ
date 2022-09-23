// ignore_for_file: unused_import, unused_field, avoid_print, use_key_in_widget_constructors, non_constant_identifier_names, unused_local_variable, prefer_const_constructors

import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:walletappui/inscription.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MesMemo());
}

class MesMemo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Test Flutter Projects'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variables
  //final MesMemo = List<String>.filled(''); // [0, 0, 0]
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

  Future getMemo() async {
    final response = await http
        .get(Uri.parse("http://s-p4.com/ekoun/traitement/affichage.php"));
    if (response.statusCode == 200) {
      setState(() {
        MesUtilisateurs = json.decode(response.body);
      });
      print(MesUtilisateurs);
      return MesUtilisateurs;
    }
  }

  @override
  void initState() {
    super.initState();
    getMemo();
  }

  //End Functions
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
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
                          getMemo();
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
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
