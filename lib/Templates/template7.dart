import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template7 {
  static Future<File> generateText(
    String name,
    String jobTitle,
    String email,
    String phoneNo,
    String address,
    var skills,
    String degree,
    String institution,
    String location,
    String summary,
    String jobTitle1,
    String company1,
    String date1,
    notableAchievements1,
    String jobPosition2,
    String company2,
    String date2,
    notableAchievements2,
    String projectTitle,
    String projectNotableAchievement,
  ) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
          build: (context) => pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Container(
                      height: 70,
                      width: double.infinity,
                      color: PdfColors.blue900,
                      alignment: pw.Alignment.topLeft,
                      child: pw.Column(children: [
                        pw.Text(name,
                            style: pw.TextStyle(
                                fontSize: 30,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.white)),
                      ]),
                    ),
                    pw.SizedBox(
                      height: 30,
                    ),
                    pw.Row(
                      children: [
                        pw.Container(
                          child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                //Details
                                pw.Container(
                                    child: pw.Text('Contact',
                                        style: pw.TextStyle(
                                            fontSize: 20,
                                            fontWeight: pw.FontWeight.bold,
                                            color: PdfColors.blue900))),
                                pw.Container(width: 70, child: pw.Divider()),

                                pw.SizedBox(height: 5),
                                pw.Container(
                                    child: pw.Text(
                                  '$email',
                                )),
                                pw.Container(
                                    child: pw.Text(
                                        '$phoneNo' + '\n' + '$address' + '\n')),

                                pw.SizedBox(height: 30),
                                pw.Container(
                                    child: pw.Text('Skills',
                                        style: pw.TextStyle(
                                            fontSize: 20,
                                            fontWeight: pw.FontWeight.bold,
                                            color: PdfColors.blue900))),
                                pw.Container(width: 70, child: pw.Divider()),
                                pw.SizedBox(height: 5),
                                pw.Container(child: pw.Text(skills)),
                                //Project Management
                                pw.SizedBox(height: 30),
                                pw.Container(
                                    child: pw.Text('Education',
                                        style: pw.TextStyle(
                                            fontSize: 20,
                                            fontWeight: pw.FontWeight.bold,
                                            color: PdfColors.blue900))),
                                pw.Container(width: 70, child: pw.Divider()),
                                pw.SizedBox(height: 5),
                                pw.Container(
                                  child: pw.Text(
                                    degree +
                                        '\n' +
                                        institution +
                                        '\n' +
                                        location,
                                  ),
                                ),
                                //Languages
                                pw.SizedBox(height: 30),
                              ]),
                        ),
                        pw.SizedBox(width: 20),
                        pw.Container(
                            width: 2,
                            height: 530,
                            child: pw.VerticalDivider(width: 20)),
                        pw.SizedBox(width: 20),
                        pw.Flexible(
                            flex: 2,
                            child: pw.Expanded(
                              child: pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Container(
                                    child: pw.Text('Summary',
                                        style: pw.TextStyle(
                                            fontSize: 20,
                                            fontWeight: pw.FontWeight.bold,
                                            color: PdfColors.blue900)),
                                  ),
                                  pw.Container(width: 70, child: pw.Divider()),
                                  pw.SizedBox(height: 10),
                                  pw.Container(
                                    width: 300,
                                    child: pw.Text(
                                      summary,
                                      maxLines: 5,
                                    ),
                                  ),
                                  pw.SizedBox(height: 30),
                                  //Experience
                                  pw.Container(
                                    child: pw.Text(
                                      'Experience',
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.blue900,
                                      ),
                                    ),
                                  ),
                                  pw.Container(width: 70, child: pw.Divider()),
                                  pw.SizedBox(height: 10),
                                  pw.Container(
                                    child: pw.Container(
                                      width: 300,
                                      child: pw.Text(
                                        jobTitle1 +
                                            '\n' +
                                            company1 +
                                            '\n' +
                                            date1,
                                      ),
                                    ),
                                  ),
                                  pw.Container(
                                    child: pw.Bullet(
                                      text: notableAchievements1,
                                    ),
                                  ),
                                  pw.SizedBox(height: 10),
                                  pw.Container(
                                    child: pw.Container(
                                      width: 300,
                                      child: pw.Text(
                                        '$jobPosition2' +
                                            '\n' +
                                            '$company2' +
                                            '\n' +
                                            'Date - $date2',
                                      ),
                                    ),
                                  ),
                                  pw.Container(
                                    child: pw.Bullet(
                                      text: '$notableAchievements2',
                                    ),
                                  ),
                                  pw.SizedBox(height: 30),
                                  //Education
                                  pw.Container(
                                    child: pw.Text(
                                      'Project',
                                      style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.blue900,
                                      ),
                                    ),
                                  ),
                                  pw.Container(width: 70, child: pw.Divider()),
                                  pw.SizedBox(height: 10),
                                  pw.Container(
                                    child: pw.Text(
                                      projectTitle,
                                    ),
                                  ),
                                  pw.Container(
                                      child: pw.Text(
                                    projectNotableAchievement,
                                  )),
                                ],
                              ),
                            ))
                      ],
                    ),
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
