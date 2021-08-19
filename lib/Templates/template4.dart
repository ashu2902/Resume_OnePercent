import 'dart:io';

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
      experienceSummary1,
      jobTitle2,
      organization2,
      date2,
      experienceSummary2,
      skill1,
      skill2,
      skill3,
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
                  '$name'.toUpperCase(),
                  style: pw.TextStyle(
                    fontSize: 30,
                    fontWeight: pw.FontWeight.bold,
                    letterSpacing: 2.0,
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
            pw.Text('$email',
                style: pw.TextStyle(
                  fontSize: 20,
                )),
            pw.SizedBox(height: 5),
            pw.Text('$phone',
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
              width: 300,
              alignment: pw.Alignment.topLeft,
              child: pw.Text(
                "$about",
                maxLines: 5,
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
                                '$instName1' +
                                    '\n\n' +
                                    '$course1' +
                                    '\n\n' +
                                    '$edDate1',
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
                            text: '$skill1',
                            style: pw.TextStyle(
                              fontSize: 20,
                            )),
                        pw.Bullet(
                            text: '$skill2',
                            style: pw.TextStyle(
                              fontSize: 20,
                            )),
                        pw.Bullet(
                            text: '$skill3',
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
                        width: 300,
                        child: pw.Text(
                          '$jobTitle1' +
                              '\n' +
                              '$organization1' +
                              '\n' +
                              'Date -$date1',
                          style: pw.TextStyle(
                              fontSize: 20, color: PdfColors.black),
                        ),
                      ),
                      pw.Container(
                        width: 300,
                        child: pw.Bullet(
                          text: '$experienceSummary1',
                          style: pw.TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        '$jobTitle2' +
                            '\n' +
                            '$organization2' +
                            '\n' +
                            'Date - $date2',
                        style: pw.TextStyle(fontSize: 20),
                      ),
                      pw.Container(
                        width: 300,
                        child: pw.Bullet(
                          text: '$experienceSummary2',
                          style: pw.TextStyle(
                            fontSize: 16,
                          ),
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
