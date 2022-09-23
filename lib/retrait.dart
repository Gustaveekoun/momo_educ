// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:walletappui/epargne.dart';
import 'package:walletappui/retrait.dart';
import 'package:walletappui/my_button.dart';

class MyRetrait extends StatefulWidget {
  const MyRetrait({Key? key}) : super(key: key);

  @override
  State<MyRetrait> createState() => _HomePageState();
}

class _HomePageState extends State<MyRetrait> {
  TextEditingController numeroController = TextEditingController();
  TextEditingController montantController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Retrait',
            style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
      ),

      // centré
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      bottomNavigationBar: BottomAppBar(),
      body: Center(
          child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset(
            "images/carte.png",
            height: 80,
            width: 80,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: numeroController,
              maxLength: 10,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Numéro MTN MoMo',
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: montantController,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Montant',
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mot de passe',
              ),
            ),
          ),
          SizedBox(
            height: 40,
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
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomePage()),
                  // );
                },
              )),
        ],
      )),
    );
  }
}
