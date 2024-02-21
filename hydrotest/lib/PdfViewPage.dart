import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guide d\'utilisation'),
      ),
      body: PDFView(
        filePath: 'assets/aide.pdf', // Chemin vers votre fichier PDF
      ),
    );
  }
}
