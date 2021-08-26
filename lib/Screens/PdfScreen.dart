import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf_render/pdf_render_widgets.dart';

class PdfScreen extends StatelessWidget {
  final pdf;
  final File file;
  final title;

  PdfScreen({this.pdf, required this.file, this.title});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('${this.title}'),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: null, label: Icon(Icons.download_rounded)),
      body: Container(
        child: PdfViewer.openFile(this.file.path),
      ),
    );
  }
}
