import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfApi {
  static Future<File> generateText(
      String name, address, phone, email, about) async {
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
              pw.Column(children: [
                //Name
                pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    child: pw.Text(name, style: pw.TextStyle(fontSize: 20))),
                pw.Divider(color: PdfColors.blue),
                //Address, Phone , Email
                pw.Container(
                    child: pw.Row(children: [
                  pw.Container(child: pw.Text(address)),
                  pw.Container(
                      height: 10, child: pw.VerticalDivider(width: 20)),
                  pw.Container(child: pw.Text(phone)),
                  pw.Container(
                      height: 10, child: pw.VerticalDivider(width: 20)),
                  pw.Container(child: pw.Text(email)),
                ])),
                pw.SizedBox(height: 30),
                //About
                pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Container(
                          alignment: pw.Alignment.topLeft,
                          child: pw.Text('About',
                              style: pw.TextStyle(fontSize: 18))),
                      pw.Container(width: 30, child: pw.Divider())
                    ]),

                pw.Container(child: pw.Text(about)),
                pw.SizedBox(height: 30),

                //Experience and Education
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                    children: [
                      //Experience,Skills
                      pw.Expanded(
                          child: pw.Container(
                              alignment: pw.Alignment.centerLeft,
                              child: pw.Column(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text('Experience',
                                        style: pw.TextStyle(fontSize: 18)),
                                    pw.Container(width: 30, child: pw.Divider())
                                  ]))),
                      //Education, Projects,
                      pw.Expanded(
                          child: pw.Container(
                              alignment: pw.Alignment.centerLeft,
                              child: pw.Column(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Text('Education',
                                        style: pw.TextStyle(fontSize: 18)),
                                    pw.Container(width: 30, child: pw.Divider())
                                  ])))
                    ])
              ])),
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
