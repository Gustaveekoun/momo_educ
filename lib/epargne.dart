// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, sized_box_for_whitespace, unused_import

import 'package:flutter/material.dart';
import 'package:walletappui/home_page.dart';
import 'package:walletappui/inscription.dart';

void main() {
  runApp(MyEpargne());
}

class MyEpargne extends StatelessWidget {
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
  TextEditingController numeroController = TextEditingController();
  TextEditingController montantController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Epargner'),
          centerTitle: true,
        ),
        body: Center(
            child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
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
              height: 20,
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Valider'),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                  },
                )),
          ],
        )));
  }
}


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//       home: const MyHomePage(title: 'Epargne'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // Variables
//   final numero = TextEditingController();
//   final montant = TextEditingController();
//   // int _counter = 0;

//   // void _incrementCounter() {
//   //   setState(() {
//   //     _counter++;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Image.asset(
//               'assets/images/logo1.jpeg',
//               height: 130,
//               width: 50,
//             ),
//             Text(
//               'Choisissez le mode de paiement',
//               style: Theme.of(context).textTheme.headline6,
//             ),
//             const Radio(
//               value: 1,
//               groupValue: 1,
//               onChanged: null,
//             ),
//             const SizedBox(
//               height: 20.0,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//               child: TextFormField(
//                 maxLength: 10,
//                 controller: numero,
//                 autocorrect: true,
//                 keyboardType: const TextInputType.numberWithOptions(
//                     signed: true, decimal: true),
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black),
//                   ),
//                   icon: Icon(Icons.numbers),
//                   labelText: 'Numéro de téléphone *',
//                   labelStyle: TextStyle(color: Colors.black54),
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Veuillez saisir un texte';
//                   }
//                   return null;
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//               child: TextFormField(
//                 controller: montant,
//                 autocorrect: true,
//                 keyboardType: const TextInputType.numberWithOptions(
//                     signed: true, decimal: true),
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black),
//                   ),
//                   icon: Icon(Icons.money),
//                   labelText: 'Saisir montant *',
//                   labelStyle: TextStyle(color: Colors.black54),
//                 ),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text(
//                 'Valider',
//                 style: Theme.of(context).textTheme.headline5,
//               ),
//             ),
//           ],
//         ),
//       ),
//       // floatingActionButton: FloatingActionButton(
//       //   onPressed: () {},
//       //   // tooltip: 'Increment',
//       //   child: const Icon(Icons.arrow_back),
//       // ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
