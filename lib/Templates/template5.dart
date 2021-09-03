import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template5 {
  static pw.Document generateText5(
    name,
    address,
    phone,
    about,
    course1,
    instName1,
    course2,
    instName2,
    jobTitle1,
    org1,
    jobTitle2,
    org2,
    skill1,
    skill2,
    skill3,
    projectTitle1,
    projectDesc1,
      projectTitle2,
      projectDesc2,
  )  {
    final pdf5 = pw.Document();
    pdf5.addPage(
      pw.Page(
          build: (context) => pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Container(
                      alignment: pw.Alignment.center,
                      child: pw.Text('CURRICULUM VITAE',
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 30,
                              decoration: pw.TextDecoration.underline,
                              decorationThickness: 1.5)),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Container(
                              child: pw.Text('$name',
                                  style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold))),
                          pw.Container(
                              width: 120, child: pw.Text('Address:- $address,')),
                          pw.Row(children: [
                            pw.Container(
                                child: pw.Text('Mobile No:- ',
                                    style: pw.TextStyle(
                                        fontWeight: pw.FontWeight.bold))),
                            pw.Container(child: pw.Text('$phone')),
                          ]),
                          pw.SizedBox(height: 15),
                          pw.Divider(color: PdfColors.black, thickness: 3.0),
                        ]),
                    pw.SizedBox(height: 10),
                    // Career Objective
                    pw.Container(
                        color: PdfColors.grey400,
                        height: 15,
                        alignment: pw.Alignment.centerLeft,
                        child: pw.Text('CAREER OBJECTIVE',
                            style:
                                pw.TextStyle(fontWeight: pw.FontWeight.bold))),
                    pw.SizedBox(height: 5),
                    pw.Container(child: pw.Text('$about')),
                    pw.SizedBox(height: 15),
                    // Academic Qualification
                    pw.Container(
                        color: PdfColors.grey400,
                        height: 15,
                        alignment: pw.Alignment.centerLeft,
                        child: pw.Text('ACADEMIC QUALIFICATION',
                            style:
                                pw.TextStyle(fontWeight: pw.FontWeight.bold))),
                    pw.SizedBox(height: 5),
                    pw.Bullet(text: '$course1 from $instName1'),
                    pw.Bullet(text: '$course2 from $instName2'),
                    // Experience
                    pw.SizedBox(height: 15),
                    pw.Container(
                        color: PdfColors.grey400,
                        height: 15,
                        alignment: pw.Alignment.centerLeft,
                        child: pw.Text('EXPERIENCE',
                            style:
                                pw.TextStyle(fontWeight: pw.FontWeight.bold))),
                    pw.SizedBox(height: 5),
                    pw.Bullet(text: '$jobTitle1 at $org1'),
                    pw.Bullet(text: '$jobTitle2 at $org2'),

                    // PERSONAL SKILLS
                    pw.SizedBox(height: 15),
                    pw.Container(
                        color: PdfColors.grey400,
                        height: 15,
                        alignment: pw.Alignment.centerLeft,
                        child: pw.Text('PERSONAL SKILL',
                            style:
                                pw.TextStyle(fontWeight: pw.FontWeight.bold))),
                    pw.SizedBox(height: 5),
                    pw.Bullet(text: '$skill1'),
                    pw.Bullet(text: '$skill2'),
                    pw.Bullet(text: '$skill3'),

                    pw.SizedBox(height: 15),
                    // Projects
                    pw.Container(
                        color: PdfColors.grey400,
                        height: 15,
                        alignment: pw.Alignment.centerLeft,
                        child: pw.Text('PROJECTS',
                            style:
                            pw.TextStyle(fontWeight: pw.FontWeight.bold))),
                    pw.SizedBox(height: 5),
                    pw.Container(child: pw.Text('$projectTitle1 - $projectDesc1')),
                    pw.SizedBox(height: 5),
                    pw.Container(child: pw.Text('$projectTitle2 - $projectDesc2')),
                    // Declartion
                    pw.SizedBox(height: 15),
                    pw.Container(
                        color: PdfColors.grey400,
                        height: 15,
                        alignment: pw.Alignment.centerLeft,
                        child: pw.Text('DECLARATION',
                            style:
                                pw.TextStyle(fontWeight: pw.FontWeight.bold))),
                    pw.SizedBox(height: 5),
                    pw.Text(
                        'I solemnly declare that all the above information is correct to the best of my'
                        'knowledge and belief'),
                    pw.SizedBox(height: 10),
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text('Place: $address'),
                          pw.Text('$name',
                              style:
                                  pw.TextStyle(fontWeight: pw.FontWeight.bold))
                        ])
                  ])),
    );
    return pdf5;
  }

  static Future<File> saveDocument5(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file5) async {
    final url = file5.path;

    await OpenFile.open(url);
  }
}
