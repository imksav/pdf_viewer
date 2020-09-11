import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class SixthChapter extends StatefulWidget {
  @override
  _SixthChapterState createState() => _SixthChapterState();
}

class _SixthChapterState extends State<SixthChapter> {
  bool _isLoading = true;
  PDFDocument _document6;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  loadDocument() async {
    setState(() {
      _isLoading = true;
    });
    var doc6 = await PDFDocument.fromAsset("assets/chapter6.pdf");
    setState(() {
      _document6 = doc6;

      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _isLoading
          ? Center(child: CircularProgressIndicator())
          : PDFViewer(document: _document6),
    );
  }
}
