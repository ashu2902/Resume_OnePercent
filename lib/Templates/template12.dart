import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template12 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 18,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 20,
    fontWeight: pw.FontWeight.bold,
    color: PdfColors.blue,
  );

  static pw.Row createRowBioData(String title, String data){
    return pw.Row(
      children: [
        pw.Container(
          child: pw.Text(
            title,
            style: kContentTextStyle.copyWith(
                fontWeight: pw.FontWeight.bold,
                fontSize: 12,
            ),
          ),
        ),
        pw.SizedBox(width: 10),
        pw.Container(
          child: pw.Text(
            data,
            style: kContentTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  static pw.Expanded createExperienceContent(
    String date,
    String companyName,
    String jobTitle,
    List<String> notableAchievements,
  ) {
    return pw.Expanded(
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          //Date
          pw.Flexible(
            flex: 1,
            child: pw.Container(
              child: pw.Text(
                date,
                style: kContentTextStyle,
              ),
            ),
          ),
          pw.Flexible(
            flex: 3,
            child:  pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                //job title
                pw.Container(
                  child: pw.Text(
                    jobTitle,
                    style: kContentTextStyle.copyWith(
                        fontSize: 20, fontWeight: pw.FontWeight.bold),
                  ),
                ),
                //company
                pw.Container(
                  child: pw.Text(
                    companyName,
                    style:
                    kContentTextStyle.copyWith(fontStyle: pw.FontStyle.italic),
                  ),
                ),
                //achievements/recognition
                pw.Bullet(
                  text: notableAchievements[0],
                  style: kContentTextStyle.copyWith(fontSize: 16),
                ),
                pw.Bullet(
                  text: notableAchievements[1],
                  style: kContentTextStyle.copyWith(fontSize: 16),
                ),
                pw.Bullet(
                  text: notableAchievements[2],
                  style: kContentTextStyle.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }

  static pw.Expanded createEducationContent(
    String date,
    String courseName,
    String nameOfInstitution,
    List<String> notableAchievements,
  ) {
    return pw.Expanded(
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          //Date
          pw.Flexible(
            flex: 1,
            child: pw.Container(
              child: pw.Text(
                date,
                style: kContentTextStyle,
              ),
            ),
          ),
          pw.Flexible(
            flex: 3,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                //Course Name and Institution
                pw.Container(
                  child: pw.Text(
                    courseName + ', ' + nameOfInstitution,
                    style: kContentTextStyle.copyWith(
                        fontSize: 18, fontWeight: pw.FontWeight.bold),
                  ),
                ),
                //achievements/recognition
                pw.Bullet(
                  text: notableAchievements[0],
                  style: kContentTextStyle.copyWith(fontSize: 16),
                ),
                pw.Bullet(
                  text: notableAchievements[1],
                  style: kContentTextStyle.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Future<File> generateTemplate(
      String name,
      String currentJobTitle,
      String address,
      String phoneNo,
      String email,
      String personalStatement,
      String date1,
      String company1,
      String jobTitle1,
      List<String> notableAchievements1,
      String date2,
      String company2,
      String jobTitle2,
      List<String> notableAchievements2,
      String eduDate1,
      String courseName1,
      String institution1,
      List<String> educationNotableAchievement1,
      String eduDate2,
      String courseName2,
      String institution2,
      List<String> educationNotableAchievement2,
      String skillSummary,
      ) async {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
      build: (context) => pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              //Name
              pw.Container(
                child: pw.Text(
                  name,
                  style: pw.TextStyle(
                    color: PdfColors.lightBlueAccent,
                    fontSize: 30,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
              pw.SizedBox(height: 10),
              //Job title
              pw.Container(
                child: pw.Text(
                  currentJobTitle,
                  style: pw.TextStyle(
                    color: PdfColors.lightBlueAccent,
                    fontSize: 25,
                  ),
                ),
              ),
              pw.SizedBox(height: 10),
              //Address
              createRowBioData('Address', address),
              pw.SizedBox(height: 5),
              //Phone
              createRowBioData('Phone', phoneNo),
              pw.SizedBox(height: 5),
              //E-mail
              createRowBioData('Email', email),
              pw.SizedBox(height: 10),
              //About
              pw.Container(
                child: pw.Text(
                  personalStatement,
                  style: kContentTextStyle.copyWith(fontSize: 20),
                  maxLines: 2,
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 10),
          //Experience
          pw.Container(
            child: pw.Text(
            'Experience',
            style: kTitleTextStyle,
          ),),
          pw.SizedBox(height: 10),
          //Experience details - 1
          createExperienceContent(
              date1, company1, jobTitle1, [
            notableAchievements1[0],
            notableAchievements1[1],
            notableAchievements1[2],
          ]),
          //Experience details - 2
          createExperienceContent(
              date2, company2, jobTitle2, [
            notableAchievements2[0],
            notableAchievements2[1],
            notableAchievements2[2],
          ]),
          pw.SizedBox(height: 10),
          pw.Container(
              child: pw.Text(
            'Education',
            style: kTitleTextStyle,
          ),),
          pw.SizedBox(height: 10),
          //Education details - 1
          createEducationContent(
              eduDate1,
              courseName1,
              institution1,
              educationNotableAchievement1),
          //Education details - 2
          createEducationContent(
            eduDate2,
            courseName2,
            institution2,
            educationNotableAchievement2
            ),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              //Skills
              pw.Flexible(
                flex: 1,
                child: pw.Container(
                  child: pw.Text(
                    'Skills',
                    style: kTitleTextStyle,
                  ),
                ),
              ),
              //Skill detail
              pw.Flexible(
                flex: 3,
                child: pw.Container(
                    child: pw.Text(
                      skillSummary,
                      style: kContentTextStyle,
                      maxLines: 3,
                    ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));

    return saveDocument(name: 'template12.pdf', pdf: pdf);
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
