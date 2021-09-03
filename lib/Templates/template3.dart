import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template3 {
  static pw.Document generateText(
      String name,
      address,
      phone,
      email,
      about,
      date1,
      jobTitle1,
      organization1,
      experienceSummary1,
      date2,
      jobTitle2,
      organization2,
      experienceSummary2,
      projTitle1,
      projSummary1,
      projTitle2,
      projSummary2,
      skills,
      instName1,
      course1,
      edDate1,
      instName2,
      course2,
      edDate2)  {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
          build: (context) => pw.Column(children: [
                //Name
                pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    child: pw.Text(name,
                        style: pw.TextStyle(
                            fontSize: 35,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.blue900))),
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
                              style: pw.TextStyle(
                                  fontSize: 20,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.blue900))),
                      pw.Container(width: double.infinity, child: pw.Divider()),
                    ]),

                pw.Container(child: pw.Text(about)),
                pw.SizedBox(height: 30),

                //Experience and Education
                pw.Expanded(
                    child: pw.Container(
                        alignment: pw.Alignment.centerLeft,
                        child: pw.Column(
                            mainAxisAlignment: pw.MainAxisAlignment.start,
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text('Professional Experience',
                                  style: pw.TextStyle(
                                      fontSize: 20,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.blue900)),
                              pw.Container(
                                  width: double.infinity, child: pw.Divider()),
                              pw.Text('Date- $date1'),
                              pw.Text('$jobTitle1, $organization1',
                                  style: pw.TextStyle(
                                      fontSize: 16, color: PdfColors.blue300)),
                              //Achievement or Responsibility
                              pw.Bullet(text: '$experienceSummary1'),

                              pw.Text('Date- $date2'),
                              pw.Text('$jobTitle2, $organization2',
                                  style: pw.TextStyle(
                                      fontSize: 16, color: PdfColors.blue300)),
                              //Achievement or Responsibility
                              pw.Bullet(text: '$experienceSummary2'),
                              pw.SizedBox(height: 10),
                              pw.Text('Volunteer Work',
                                  style: pw.TextStyle(
                                      fontSize: 18,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.blue900)),
                              pw.Container(
                                  width: double.infinity, child: pw.Divider()),
                              pw.Text('$projTitle1, ',
                                  style: pw.TextStyle(
                                      fontSize: 16, color: PdfColors.blue300)),
                              //Achievement or Responsibility
                              pw.Bullet(text: '$projSummary1'),
                              pw.Text('$projTitle2, ',
                                  style: pw.TextStyle(
                                      fontSize: 16, color: PdfColors.blue300)),
                              //Achievement or Responsibility
                              pw.Bullet(text: '$projSummary2'),
                              pw.SizedBox(height: 10),
                              pw.Text('Skills',
                                  style: pw.TextStyle(
                                      fontSize: 20,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.blue900)),
                              pw.Container(
                                  width: double.infinity, child: pw.Divider()),
                              pw.Text(skills),
                              pw.SizedBox(height: 30),
                              pw.Text('Education',
                                  style: pw.TextStyle(
                                      fontSize: 20,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.blue900)),
                              pw.Container(
                                  width: double.infinity, child: pw.Divider()),
                              pw.Text(instName1,
                                  style: pw.TextStyle(
                                      fontSize: 16, color: PdfColors.blue300)),
                              pw.Text(course1),
                              pw.Text('Date- $edDate1'),
                              pw.Text('$instName2',
                                  style: pw.TextStyle(
                                      fontSize: 16, color: PdfColors.blue300)),
                              pw.Text('$course2'),
                              pw.Text('Date- $edDate2'),
                            ]))),
              ])),
    );

    return pdf;
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
