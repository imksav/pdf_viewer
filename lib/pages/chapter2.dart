import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class SecondChapter extends StatefulWidget {
  @override
  _SecondChapterState createState() => _SecondChapterState();
}

class _SecondChapterState extends State<SecondChapter> {
  bool _isLoading = true;
  PDFDocument _document2;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    setState(() {
      _isLoading = true;
    });
    var doc2 = await PDFDocument.fromAsset("assets/chapter2.pdf");

    setState(() {
      _document2 = doc2;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _isLoading
          ? Center(child: CircularProgressIndicator())
          : PDFViewer(document: _document2),
    );
  }
}
