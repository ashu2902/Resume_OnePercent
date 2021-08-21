import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

// template 9
class Template9 {
  static Future<File> generateText9(
    name,
    address,
    phone,
    email,
    about,
    skill1,
    skill2,
    skill3,
    jobTitle1,
    compStartDate1,
    compEndDate1,
    compName1,
    compLocation1,
    summary1,
    jobTitle2,
    compStartDate2,
    compEndDate2,
    compName2,
    compLocation2,
    summary2,
    instName,
    course,
    eddate1,
    edSummary1,
    edLocation1,
    instname2,
    course2,
    eddate2,
    edSummary2,
    edLocation2,
  ) async {
    final pdf9 = pw.Document();
    pdf9.addPage(pw.Page(
      build: (context) => pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text('name', style: pw.TextStyle(fontSize: 40)),
            pw.SizedBox(height: 8),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text('address'),
                  pw.SizedBox(width: 10),
                  pw.Text('phone'),
                  pw.SizedBox(width: 10),
                  pw.Text('email'),
                ]),
            pw.SizedBox(height: 10),
            // professional summary
            pw.Text('PROFESSIONAL SUMMARY', style: pw.TextStyle(fontSize: 25)),
            pw.SizedBox(height: 5),
            pw.Container(
              width: 100,
              child: pw.Text('About'),
            ),
            pw.SizedBox(height: 10),
            //skills
            pw.Text('SKILLS', style: pw.TextStyle(fontSize: 25)),
            pw.Bullet(text: 'Skill1'),
            pw.Bullet(text: 'Skill2'),
            pw.Bullet(text: 'Skill3'),
            pw.SizedBox(height: 10),
            //Experience
            pw.Text('EXPERIENCE', style: pw.TextStyle(fontSize: 25)),
            pw.SizedBox(height: 5),
            // JOB 1
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('  JobTitle1', style: pw.TextStyle()),
                  pw.Text('CompStartDate1-CompEndDate1', style: pw.TextStyle()),
                ]),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('  CompName1', style: pw.TextStyle()),
                  pw.Text('CompLocation1', style: pw.TextStyle()),
                ]),
            pw.Container(
              width: 100,
              child: pw.Text('  Summary1'),
            ),
            pw.SizedBox(height: 5),
            // JOB 2
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('  JobTitle2', style: pw.TextStyle()),
                  pw.Text('CompStartDate2-CompEndDate2', style: pw.TextStyle()),
                ]),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('  CompName2', style: pw.TextStyle()),
                  pw.Text('CompLocation2', style: pw.TextStyle()),
                ]),
            pw.Container(
              width: 100,
              child: pw.Text('  Summary2'),
            ),
            pw.SizedBox(height: 10),
            //EDUCATION
            pw.Text('EDUCATION', style: pw.TextStyle(fontSize: 25)),
            pw.SizedBox(height: 5),
            // School 1
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('  Instname/course', style: pw.TextStyle()),
                  pw.Text('Eddate1', style: pw.TextStyle()),
                ]),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('  EdSummary1', style: pw.TextStyle()),
                  pw.Text('EdLocation1', style: pw.TextStyle()),
                ]),
            pw.SizedBox(height: 5),
            // School 2
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('  Instname2/course2', style: pw.TextStyle()),
                  pw.Text('Eddate2', style: pw.TextStyle()),
                ]),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('  EdSummary2', style: pw.TextStyle()),
                  pw.Text('EdLocation2', style: pw.TextStyle()),
                ]),
          ]),
    ));
    return saveDocument9(name: 'resume9', pdf: pdf9);
  }

  static Future<File> saveDocument9(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file9) async {
    final url = file9.path;

    await OpenFile.open(url);
  }
}
