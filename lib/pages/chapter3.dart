import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class ThirdChapter extends StatefulWidget {
  @override
  _ThirdChapterState createState() => _ThirdChapterState();
}

class _ThirdChapterState extends State<ThirdChapter> {
  bool _isLoading = true;
  PDFDocument _document3;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    setState(() {
      _isLoading = true;
    });
    var doc3 = await PDFDocument.fromAsset("assets/chapter3.pdf");
    setState(() {
      _document3 = doc3;

      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _isLoading
          ? Center(child: CircularProgressIndicator())
          : PDFViewer(document: _document3),
    );
  }
}
