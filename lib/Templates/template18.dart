import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template18 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 20,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 25,
    color: PdfColors.lightBlueAccent,
    fontWeight: pw.FontWeight.bold,
  );

  static pw.Container TextContainer(String text, pw.TextStyle style) {
    return pw.Container(child: pw.Text(text, style: style));
  }

  static pw.Column UserDetails(String detail, String summary) {
    return pw.Column(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.stretch,
        children: [
          TextContainer(detail,
              kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
          TextContainer(summary, kContentTextStyle),
        ]);
  }

  static Future<File> generateText(
    String name,
    address,
    phone,
    email,
    about,
    course1,
    date1,
    institutionName1,
    summary1,
    course2,
    date2,
    institutionName2,
    summary2,
    skill1,
    skill2,
    skill3,
    jobTitle1,
    organization1,
    jobStartDate1,
    jobEndDate1,
    jobSummary1,
    jobTitle2,
    organization2,
    jobStartDate2,
    jobEndDate2,
    jobSummary2,
  ) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            //Name
            pw.Container(
              alignment: pw.Alignment.centerLeft,
              child: pw.Text(
                name,
                style: pw.TextStyle(
                  fontSize: 50,
                  fontWeight: pw.FontWeight.bold,
                  color: PdfColors.lightBlueAccent,
                ),
              ),
            ),
            pw.SizedBox(height: 10),
            //About
            pw.Divider(
              thickness: 2,
              color: PdfColors.lightBlueAccent,
            ),
            pw.SizedBox(height: 10),
            TextContainer(address + ' | ' + phone + ' | ' + email,
                kContentTextStyle.copyWith(fontSize: 18)),
            pw.SizedBox(height: 20),
            TextContainer('About', kTitleTextStyle),
            pw.SizedBox(height: 10),
            TextContainer(about, kContentTextStyle),
            pw.SizedBox(height: 30),
            TextContainer('Education', kTitleTextStyle),
            pw.SizedBox(height: 10),
            UserDetails(
                course1 + ' | ' + date1 + ' | ' + institutionName1, summary1),
            pw.SizedBox(height: 20),
            UserDetails(
                course2 + ' | ' + date2 + ' | ' + institutionName2, summary2),
            pw.SizedBox(height: 30),
            TextContainer('Skills & Abilities', kTitleTextStyle),
            pw.SizedBox(height: 10),
            TextContainer(skill1, kContentTextStyle),
            pw.SizedBox(height: 10),
            TextContainer(skill2, kContentTextStyle),
            pw.SizedBox(height: 10),
            TextContainer(skill2, kContentTextStyle),
            pw.SizedBox(height: 30),
            TextContainer('Experience', kTitleTextStyle),
            pw.SizedBox(height: 10),
            UserDetails(jobTitle1 + ' | ' + organization1 + ' | ' + jobStartDate1 + ' - ' + jobEndDate1,
                jobSummary1),
            UserDetails(jobTitle1 + ' | ' + organization1 + ' | ' + jobStartDate2 + ' - ' + jobEndDate2,
                jobSummary2),
          ],
        ),
      ),
    );

    return saveDocument(name: 'template18.pdf', pdf: pdf);
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
