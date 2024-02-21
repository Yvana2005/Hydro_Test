import 'package:flutter/material.dart';
//import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:hydrotest/PdfViewPage.dart';

class homeScreen extends StatelessWidget {
  //const homeScreen({
  const homeScreen({super.key});
  // required this.DescriptionSection,
  // required this.ButtonSection,
  // });

  // final Widget DescriptionSection;
  // final Widget ButtonSection;

  @override
  Widget build(BuildContext context) {
    Widget DescriptionSection = Container(
      padding: const EdgeInsets.all(12),
      child: Text(
        "  Cette application par principe permets de realiser des etapes de blabla et de diagnostique avant l'entree dans la presse hydrolique d'ou le nom de l'application celle ci permet de faire une verification GPL",
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("SUIVI DES BOUTEILLES GPL"),
      ),
      body: ListView(children: [
        Stack(
          children: [
            Container(
              width: 600,
              height: 240,
              child: Center(child: CircularProgressIndicator()),
            ),
            Image.asset(
              'images/bottles.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        padding:
                            const EdgeInsets.only(bottom: 8, top: 10, left: 4),
                        child: Text(
                          "Bienvenue sur cette application",
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
              //Icon(Icons.info, color: Colors.red),
              //Text("Aide"),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PdfViewPage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Icon(Icons.info, color: Colors.red),
                    Text("Aide"),
                  ],
                ),
              ),
            ],
          ),
        ),
        DescriptionSection,
        ButtonSection
      ]),
    );
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
