import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class FirstChapter extends StatefulWidget {
  @override
  _FirstChapterState createState() => _FirstChapterState();
}

class _FirstChapterState extends State<FirstChapter> {
  bool _isLoading = true;
  PDFDocument _document1;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    setState(() {
      _isLoading = true;
    });
    var doc1 = await PDFDocument.fromURL("assets/chapter1.pdf");

    setState(() {
      _document1 = doc1;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _isLoading
          ? Center(child: CircularProgressIndicator())
          : PDFViewer(document: _document1),
    );
  }
}
