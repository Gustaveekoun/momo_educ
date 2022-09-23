// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:walletappui/home_page.dart';
import 'package:walletappui/inscription.dart';

void main() {
  runApp(MyPropos());
}

class MyPropos extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('A propos de nous'),
          centerTitle: true,
        ),
        body: Center(
            child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Text(
                  'MoMo EDUC est une application permettant aux parents de pouvoir préparer la rentrée scolaire en épargnant à leur rythme.'),
            ),
          ],
        )));
  }
}
