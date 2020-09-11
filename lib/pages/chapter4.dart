import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class FourthChapter extends StatefulWidget {
  @override
  _FourthChapterState createState() => _FourthChapterState();
}

class _FourthChapterState extends State<FourthChapter> {
  bool _isLoading = true;
  PDFDocument _document4;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    setState(() {
      _isLoading = true;
    });
    var doc4 = await PDFDocument.fromAsset("assets/chapter4.pdf");
    setState(() {
      _document4 = doc4;

      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _isLoading
          ? Center(child: CircularProgressIndicator())
          : PDFViewer(document: _document4),
    );
  }
}
