import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfApi {
  static Future<File> generateText(String text) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
          build: (context) =>
              // pw.Center(
              //   child: pw.Text(
              //     text,
              //     style: pw.TextStyle(fontSize: 48),
              //   ),
              // ),
              pw.Column(children: [pw.Text('Your Name')])),
    );

    return saveDocument(name: 'my_resume.pdf', pdf: pdf);
  }

  static Future<File> saveDocument(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }
}
