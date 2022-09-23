// ignore_for_file: must_call_super, unused_local_variable, unused_import, unnecessary_new
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:walletappui/home_page.dart';
import 'package:walletappui/welcome_page.dart';

class SplashAcceuil extends StatefulWidget {
  const SplashAcceuil({super.key});

  @override
  State<SplashAcceuil> createState() => _SplashAcceuilState();
}

class _SplashAcceuilState extends State<SplashAcceuil> {
  @override
  void initState() {
    final timer = Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0x99FFFFFF),
              Color(0xB3FFFFFF),
            ],
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    'lib/icons/logo.png',
                    height: 300,
                    width: 300,
                  ),
                  const Text(
                    "Péparez la rentrée scolaire ou académique de vos\n enfants en épargnant à votre rythme de la plus simple\n des manieres",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const CircularProgressIndicator(),
            ]),
      ),
    );
  }
}
