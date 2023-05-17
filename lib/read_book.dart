import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class ReadBook extends StatefulWidget {
  final String path;

  const ReadBook({Key? key, required this.path}) : super(key: key);

  @override
  State<ReadBook> createState() => _ReadBookState();
}

class _ReadBookState extends State<ReadBook> {
  @override
  Widget build(BuildContext context) {
    final pdfController =
        PdfController(document: PdfDocument.openAsset(widget.path));
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text(
          "Doc . . . /",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: PdfView(controller: pdfController),
    );
  }
}
