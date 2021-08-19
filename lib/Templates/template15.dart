import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template15 {
  static Future<File> generateText(
      String name,
      address,
      phone,
      email,
      jobTitle1,
      organization1,
      startdate1,
      enddate1,
      jobTitle2,
      organization2,
      startdate2,
      enddate2,
      skills,
      instName1,
      course1,
      edDate1,
      experienceAbout1,
      instName2,
      course2,
      edDate2,
      experienceAbout2,
      projTitle1,
      projectDesc1,
      projTitle2,
      projectDesc2,
      lang1,
      lang2,
      ) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
          build: (context) => pw.Column(children: [
            //Name
            pw.Container(
                alignment: pw.Alignment.centerLeft,
                child: pw.Text(name, style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold,color: PdfColors.indigo900))),
            pw.SizedBox(height: 10),
            //Address, Phone , Email
            pw.Container(
              child: pw.Column(
                children: [
                  pw.Container(
                      child: pw.Row(children: [
                        pw.Container(
                            child: pw.Text(phone),
                        ),
                         pw.SizedBox(width: 20),
                        pw.Container(child: pw.Text(email)),
                      ])
                  ),
                  pw.Container(
                      child: pw.Row(children: [
                        pw.SizedBox(width: 20),
                        pw.Container(child: pw.Text(address)),
                      ])
                  )
                ]
              )
                ),
            pw.SizedBox(height: 30),

            //Experience and Education
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
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
                                    style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold,color: PdfColors.indigo900)),
                                pw.Container(
                                    width: 200, child: pw.Divider(color: PdfColors.indigo900)),
                                pw.Container(
                                    child: pw.Text(
                                        '$jobTitle1, $organization1',
                                        style: pw.TextStyle(
                                            fontSize: 16,
                                            color: PdfColors.blue300))),
                                //Date
                                pw.Text('Date- $startdate1 to $enddate1'),
                                //Achievement or Responsibility
                                pw.Container(
                                    height: 51,
                                    child:
                                    pw.Bullet(text: experienceAbout1)),
                                pw.SizedBox(height: 30),

                                pw.Text('$jobTitle2, $organization2',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                //Date
                                pw.Text('Date- $startdate2 to $enddate2'),
                                //Achievement or Responsibility
                                pw.Container(
                                    height: 51,
                                    child:
                                    pw.Bullet(text: experienceAbout2)),
                                pw.SizedBox(height: 30),
                                //Achievement or Responsibility

                                //SKILLS
                                pw.Text('Skill',
                                    style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold,color: PdfColors.indigo900)),
                                pw.Container(
                                    width: 200, child: pw.Divider(color: PdfColors.indigo900)),
                                pw.Text(skills),
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
                                    style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold,color: PdfColors.indigo900)),
                                pw.Container(
                                    width: 200, child: pw.Divider(color: PdfColors.indigo900)),
                                pw.Text(instName1,
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                pw.Text(course1), pw.SizedBox(height: 10),

                                pw.Text('Date- $edDate1'),
                                pw.SizedBox(height: 15),
                                pw.Text(instName2,
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                pw.Text(course2),
                                pw.Text('Date- $edDate2'),
                                pw.SizedBox(height: 30),

                                //Projects&Volunteer
                                pw.Text('Projects',
                                    style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold,color: PdfColors.indigo900)),
                                pw.Container(
                                    width: 200, child: pw.Divider()),
                                pw.SizedBox(height: 20),

                                pw.Text('$projTitle1',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),

                                //Achievement or Responsibility
                                pw.Bullet(text: '$projectDesc1'),
                                pw.SizedBox(height: 20),
                                pw.Text('$projTitle2',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                pw.Bullet(text: '$projectDesc2'),
                                pw.Container(
                                    child: pw.Text(
                                      'Languages',
                                        style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold,color: PdfColors.indigo900),
                                    )),
                                pw.Container(
                                    width: 200, child: pw.Divider(color: PdfColors.indigo900)),
                                pw.SizedBox(height: 10),
                                pw.Container(
                                  child: pw.Text(
                                    '$lang1' + '\n' + '$lang2',
                                      style: pw.TextStyle(fontSize: 16),
                                  ),
                                ),
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
