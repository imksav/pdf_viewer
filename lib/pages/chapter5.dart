import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class FifthChapter extends StatefulWidget {
  @override
  _FifthChapterState createState() => _FifthChapterState();
}

class _FifthChapterState extends State<FifthChapter> {
  bool _isLoading = true;
  PDFDocument _document5;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    setState(() {
      _isLoading = true;
    });
    var doc5 = await PDFDocument.fromAsset("assets/chapter5.pdf");
    setState(() {
      _document5 = doc5;

      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _isLoading
          ? Center(child: CircularProgressIndicator())
          : PDFViewer(document: _document5),
    );
  }
}
