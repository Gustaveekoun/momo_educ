// ignore_for_file: unused_import, duplicate_ignore

import 'package:flutter/material.dart';
// ignore: unused_import
// import 'package:walletappui/home_page.dart';
import 'package:walletappui/splash.dart';
import 'package:walletappui/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MoMo EDUC',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const SplashAcceuil(),
    );
  }
}
