import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template4 {
  static Future<File> generateTemplate(
      String name,
      address,
      phone,
      email,
      about,
      jobTitle1,
      organization1,
      date1,
      skills,
      instName1,
      course1,
      edDate1,
      edDate2) async {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
      build: (context) =>
          pw.Column(mainAxisAlignment: pw.MainAxisAlignment.start, children: [
        pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Divider(
                color: PdfColors.blue700,
                thickness: 5,
              ),
              //Header: Name
              pw.Container(
                alignment: pw.Alignment.topCenter,
                child: pw.Text(
                  'Emma Watson'.toUpperCase(),
                  style: pw.TextStyle(
                    fontSize: 30,
                    fontWeight: pw.FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
              pw.Container(
                alignment: pw.Alignment.topCenter,
                child: pw.Text(
                  jobTitle1.toString().toUpperCase(),
                  style: pw.TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ]),
        pw.SizedBox(height: 30),
        pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
            //Contact
            pw.Text(
              'Contact'.toUpperCase(),
              textAlign: pw.TextAlign.right,
              softWrap: true,
              style: pw.TextStyle(
                fontSize: 20,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.grey800,
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Text('email@email.com',
                style: pw.TextStyle(
                  fontSize: 20,
                )),
            pw.SizedBox(height: 5),
            pw.Text('123456789',
                style: pw.TextStyle(
                  fontSize: 20,
                )),
          ]),
          pw.SizedBox(width: 20),
          //Profile
          pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
            pw.Container(
              alignment: pw.Alignment.topLeft,
              child: pw.Text(
                'Profile'.toUpperCase(),
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.grey800,
                ),
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Container(
              alignment: pw.Alignment.topLeft,
              child: pw.Text(
                'This is about somebody',
                style: pw.TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ]),
        ]),
        pw.SizedBox(height: 30),
        pw.Expanded(
          child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Expanded(
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                          child: pw.Text(
                            'Education'.toUpperCase(),
                            style: pw.TextStyle(
                              fontSize: 22,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.grey800,
                            ),
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Container(
                            child: pw.Text(
                                'instName1' +
                                    '\n\n' +
                                    'course1' +
                                    '\n\n' +
                                    'edDate1',
                                style: pw.TextStyle(
                                  fontSize: 20,
                                ))),
                        pw.SizedBox(height: 30),
                        pw.Container(
                          child: pw.Text(
                            'Skills'.toUpperCase(),
                            style: pw.TextStyle(
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.grey800,
                            ),
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Bullet(
                            text: 'Java',
                            style: pw.TextStyle(
                              fontSize: 20,
                            )),
                        pw.Bullet(
                            text: 'Python',
                            style: pw.TextStyle(
                              fontSize: 20,
                            )),
                        pw.Bullet(
                            text: 'Go',
                            style: pw.TextStyle(
                              fontSize: 20,
                            )),
                      ]),
                ),
                pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Container(
                        child: pw.Text(
                          'Professional Experience'.toUpperCase(),
                          style: pw.TextStyle(
                            fontSize: 20,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.grey800,
                          ),
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Container(
                        child: pw.Text(
                          organization1 + '\n' + date1,
                          style: pw.TextStyle(fontSize: 20),
                        ),
                      ),
                    ]),
              ]),
        ),
        pw.Divider(
          color: PdfColors.blue700,
          thickness: 5,
        ),
      ]),
    ));

    return saveDocument(name: 'my_resume_temp_4.pdf', pdf: pdf);
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
