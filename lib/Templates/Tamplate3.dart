import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
class Pdf {
  static Future<File> generateText(
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
    pdf.addPage(
        pw.Page(
        build: (context) =>
            pw.Column(children: [
              //Name
              pw.Container(
                  alignment: pw.Alignment.centerLeft,
                  child: pw.Text(name,
                      style: pw.TextStyle(
                      fontSize: 50,
                      fontWeight: pw.FontWeight.bold,
                          color: PdfColors.blue900

                  ))),
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
                        child: pw.Text('SUMMARY',
                            style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold,color: PdfColors.blue900))),
                    pw.Container(
                        width: double.infinity, child: pw.Divider()),
                  ]),

              pw.Container(child: pw.Text(about)),
              pw.SizedBox(height: 30),

              //Experience and Education
              pw.Expanded(
                  child: pw.Container(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment:
                          pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('Professional Experience',
                                style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold,color: PdfColors.blue900)),
                            pw.Container(
                                width: double.infinity, child: pw.Divider()),
                            pw.Text('Date- $date1'),
                            pw.Text('$jobTitle1, $organization1}',
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    color: PdfColors.blue300)),
                            //Achievement or Responsibility
                            pw.Bullet(
                                text:
                                'Notable Achievement/Responsibility'),
                            pw.Bullet(
                                text:
                                'Notable Achievement/Responsibility'),
                            pw.Text('Date- $date1'),
                            pw.Text('$jobTitle1, $organization1}',
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    color: PdfColors.blue300)),
                            //Achievement or Responsibility
                            pw.Bullet(
                                text:
                                'Notable Achievement/Responsibility'),
                            pw.Bullet(
                                text:
                                'Notable Achievement/Responsibility'),
                            pw.SizedBox(height: 30),
                            pw.Text('Volunteer Work',
                                style: pw.TextStyle(fontSize: 18,fontWeight:pw.FontWeight.bold,color: PdfColors.blue900)),
                            pw.Container(
                                width: double.infinity, child: pw.Divider()),
                            pw.Text('Date- $date1'),
                            pw.Text('$jobTitle1, $organization1}',
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    color: PdfColors.blue300)),
                            //Achievement or Responsibility
                            pw.Bullet(
                                text:
                                'Notable Achievement/Responsibility'),
                            pw.SizedBox(height: 30),
                            pw.Text('Skills',
                                style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold,color: PdfColors.blue900)),
                            pw.Container(
                                width: double.infinity, child: pw.Divider()),
                            pw.Text(skills),
                            pw.SizedBox(height: 30),
                            pw.Text('Education',
                                style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold,color: PdfColors.blue900)),
                            pw.Container(
                                width: double.infinity, child: pw.Divider()),
                            pw.Text(instName1,
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    color: PdfColors.blue300)),
                            pw.Text(course1),
                            pw.Text('Date- $edDate1'),
                            pw.Text('Institution Name',
                                style: pw.TextStyle(
                                    fontSize: 16,
                                    color: PdfColors.blue300)),
                            pw.Text('Degree or certification'),
                            pw.Text('Date- $edDate2'),
                          ]))),

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