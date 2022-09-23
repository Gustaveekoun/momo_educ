// ignore_for_file: unused_import, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:walletappui/epargne.dart';
import 'package:walletappui/my_button.dart';
import 'package:walletappui/retrait.dart';
import 'package:walletappui/solde..dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'MON COMPTE',
            style: TextStyle(
              color: Colors.yellow,
            ),
          ),
        ),
        centerTitle: true,
      ),

      // centré
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      bottomNavigationBar: BottomAppBar(),
      body: SafeArea(
        child: Column(children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 25),

          // Les boutons
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "images/argent.png",
                    width: 60,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Image.asset("images/carte.png", width: 60),
                  ),
                  Image.asset("images/banque.png", width: 60),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyEpargne(),
                        ),
                      );
                    },
                    child: Text(
                      'Epargner',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyRetrait(),
                        ),
                      );
                    },
                    child: Text(
                      'Retrait',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MySolde(),
                        ),
                      );
                    },
                    child: Text(
                      'Mon solde',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
          SizedBox(height: 25),
          //La barre
          Divider(
            color: Colors.grey,
            height: 5,
            thickness: 2,
            indent: 25,
            endIndent: 25,
          ),
        ]),
      ),
    );
  }
}
