import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
class Template15 {
  static Future<File> generateText(
      ) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
          build: (context) =>
              pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Container(

                      height: 100,
                      width: double.infinity,
                      alignment: pw.Alignment.topLeft,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text("Joyce Shotwell",
                                style: pw.TextStyle(
                                    fontSize: 30,
                                    fontWeight: pw.FontWeight.bold,
                                    color: PdfColors.indigo900

                                )),
                            pw.Text("Civil Engineer",
                              style: pw.TextStyle(
                                  fontSize: 18,
                                  color: PdfColors.indigo900 ),),
                            pw.Row(
                              children: []
                            )
                          ]
                      ),

                    ),
                    pw.SizedBox(
                      height: 30,
                    ),

                  ]) ),
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
