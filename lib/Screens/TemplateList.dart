import 'package:flutter/material.dart';
import 'package:resume/Templates/template1.dart';

class TemplateList extends StatelessWidget {
  const TemplateList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            child: TextButton(
              onPressed: () async {
                final pdfFile = await PdfApi.generateText('Sample Text');
                PdfApi.openFile(pdfFile);
              },
              child: Text('Template1'),
            ),
          ),
        ),
      ),
    );
  }
}
