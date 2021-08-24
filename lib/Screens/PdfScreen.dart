import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class PdfScreen extends StatelessWidget {
  PdfScreen({required this.file, required this.title});
  final file;
  final title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${this.title}'),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: null, label: Icon(Icons.download_rounded)),
        body: Container(child: PdfViewer.openFile(file)));
  }
}
