import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class PdfScreen extends StatelessWidget {
  PdfScreen({required this.path, required this.title});
  final path;
  final title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.indigo, Colors.blue], stops: [0.5, 1.0],
              ),
            ),
          ),
          title: Text('${this.title}'),
        ),
        floatingActionButton: FloatingActionButton.extended(
            onPressed: null, label: Icon(Icons.download_rounded)),
        body: Container(child: PdfViewer.openFile(path)));
  }
}
