/**
 * import 'package:flutter/material.dart';
import 'package:walletappui/pages/my_button.dart';

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
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text(
            'MON COMPTE',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      bottomNavigationBar: BottomAppBar(),
      body: SafeArea(
        child: Column(children: [
          // parametres
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.settings),

                // Deconnexion
                Container(
                  margin: const EdgeInsets.all(15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Deconnexion',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),

          //logo
          Container(
            margin: const EdgeInsets.all(5),
            height: 100,
            child: Center(
              child: Image.asset(
                'lib/icons/logo.png',
              ),
            ),
          ),

          SizedBox(height: 25),

          //Nom utilisateur
          Row(
            children: [
              Text(
                'YORO MELAINE GILSAS',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                ),
              ),
              Text(
                '#####',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),

          SizedBox(height: 25),

          // Les boutons
          Padding(
            padding: const EdgeInsets.all(10),
            child:Column(children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                //Epargner
                Column(
                  
                  children: [
                    Image.asset(
                      "images/argent.png",
                      width: 90,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Epargner',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),

                //Retrait
                Column(
                  children: [
                    Image.asset(
                      "images/carte.png",
                      width: 80,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Retrait',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),

                //Mon solde
                Column(
                  children: [
                    Image.asset(
                      "images/banque.png",
                      width: 90,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Mon solde',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),               
                // column -> epargnes
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                //Epargner
                Column(
                  
                  children: [
                    Image.asset(
                      "images/argent.png",
                      width: 90,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Epargner',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),

                //Retrait
                Column(
                  children: [
                    Image.asset(
                      "images/carte.png",
                      width: 80,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Retrait',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),

                //Mon solde
                Column(
                  children: [
                    Image.asset(
                      "images/banque.png",
                      width: 90,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Mon solde',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),               
                // column -> epargnes
              ],
            ),
            ],
            ) 
          ),
        ]),
      ),
    );
  }
}

 */