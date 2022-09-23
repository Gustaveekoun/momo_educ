// ignore_for_file: file_names, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:walletappui/epargne.dart';
import 'package:walletappui/retrait.dart';
import 'package:walletappui/my_button.dart';

class MySolde extends StatefulWidget {
  const MySolde({Key? key}) : super(key: key);

  @override
  State<MySolde> createState() => _HomePageState();
}

class _HomePageState extends State<MySolde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text(
            'Mon solde',
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
          Image.asset(
            "images/banque.png",
            height: 180,
            width: 180,
          ),
          SizedBox(height: 30),

          // Solde
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(children: []),
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
