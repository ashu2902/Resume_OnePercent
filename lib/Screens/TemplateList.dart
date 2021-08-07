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
                final pdfFile = await PdfApi.generateText(
                    'Sample Name',
                    'Sample Address',
                    '9888982838',
                    'sample@email.com',
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.");
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
