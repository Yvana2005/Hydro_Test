import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget DescriptionSection = Container(
      padding: const EdgeInsets.all(12),
      child: Text(
        "  Cette application par principe permets de realiser des etapes de blablabla et de diagnostique avant l'entree dans la presse hydrolique d'ou le nom de l'application celle ci permet de faire une verification des elemnets caracteristique de la bouteille GPL",
        softWrap: true,
        style: TextStyle(fontSize: 17),
      ),
    );
    Widget ButtonSection = Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.red, Icons.add_a_photo_rounded, "AJOUTER"),
          _buildButtonColumn(Colors.red, Icons.book_rounded, "MODIFIER")
        ],
      ),
    );
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text("SUIVI DES BOUTEILLES GPL"),
          ),
          body: ListView(children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(
                                bottom: 8, top: 10, left: 4),
                            child: Text(
                              "Bienvenu sur cette application",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        //Text(
                        // "Permet d'avoir un apercu",
                        // style: TextStyle(
                        //      fontWeight: FontWeight.bold,
                        //     color: Colors.grey[500]),
                        // )
                      ],
                    ),
                  ),
                  Icon(Icons.face_3_rounded, color: Colors.red),
                  Text("J'aime"),
                ],
              ),
            ),
            DescriptionSection,
            ButtonSection
          ]),
        ));
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Icon(icon, color: color)),
        Text(label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color,
            ))
      ],
    );
  }
}
