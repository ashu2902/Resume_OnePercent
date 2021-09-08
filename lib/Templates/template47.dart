import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template47 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 18,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 22,
    color: PdfColors.blue,
    fontWeight: pw.FontWeight.bold,
  );
  static final kVerticalSpace = pw.SizedBox(height: 15);
  static final kHorizontalSpace = pw.SizedBox(width: 40);

  static pw.Container TextContainer(String text, var style,
      {pw.TextAlign? alignment = pw.TextAlign.left, int lines = 3}) {
    return pw.Container(
        child:
        pw.Text(text, maxLines: lines, style: style, textAlign: alignment));
  }

  static pw.Row Title(String text) {
    return pw.Row(
        children: [
          pw.Expanded(
            child: pw.Divider(
              thickness: 4,
              height: 1,
              color: PdfColors.lightBlue,
            ),
          ),
          pw.SizedBox(width: 5),
          TextContainer(text, kTitleTextStyle),
          pw.SizedBox(width: 5),
          pw.Expanded(
            child: pw.Divider(
              thickness: 4,
              height: 1,
              color: PdfColors.lightBlue,
            ),
          ),
        ]
    );
  }

  static pw.Column ExperienceDetails(String jobTitle, String company,
      String startDate, String endDate, String summary, String location) {
    return  pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.stretch,
        children: [
          pw.Row(
              children: [
                TextContainer('$jobTitle, ', kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
                TextContainer('$startDate - $endDate', kContentTextStyle),
              ]
          ),
          pw.Row(
              children: [
                TextContainer('$company - ', kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
                TextContainer('$location', kContentTextStyle),
              ]
          ),
          TextContainer(summary, kContentTextStyle),
        ]
    );
  }

  static pw.Container EducationDetails(String university, String course, String date, String location) {
    return  pw.Container(
      width: 300,
      child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: [
            TextContainer(
                course,
                kContentTextStyle.copyWith(
                    fontWeight: pw.FontWeight.bold)),
            TextContainer(
                date,
                kContentTextStyle.copyWith(
                    fontWeight: pw.FontWeight.bold)),
            TextContainer('$university, $location', kContentTextStyle),
          ]),
    );
  }

  static pw.Row Skill(String skillText) {
    return pw.Row(children: [
      pw.Container(
        width: 10,
        child: pw.Bullet(
          bulletSize: 10,
          bulletColor: PdfColors.lightBlue,
        ),
      ),
      pw.SizedBox(width: 40),
      TextContainer(skillText, kContentTextStyle.copyWith(fontSize: 18)),
    ]);
  }

  static pw.Document generateText47(
      name,
      phone,
      email,
      address,
      about,
      jobTitle1,
      company1,
      companyStartDate1,
      companyEndDate1,
      jobSummary1,
      jobLocation1,
      jobTitle2,
      company2,
      companyStartDate2,
      companyEndDate2,
      jobSummary2,
      jobLocation2,
      course1,
      university1,
      edDate1,
      edLocation1,
      course2,
      university2,
      edDate2,
      edLocation2,
      skill1,
      skill2,
      skill3,

      ) {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
        build: (context) => pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.stretch,
            children: [
              pw.Divider(
                thickness: 2,
                color: PdfColors.blue,
              ),
              pw.SizedBox(height: 5),
              TextContainer(name, pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                  fontSize: 48,
                  color: PdfColors.blue
              ), alignment: pw.TextAlign.center),
              pw.Divider(
                thickness: 2,
                color: PdfColors.blue,
              ),
              pw.Divider(
                thickness: 4,
                color: PdfColors.blue500,
                height: 1,
              ),
              pw.SizedBox(height: 10),
              pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  children: [
                    TextContainer(address, kContentTextStyle),
                    pw.SizedBox(width: 10),
                    TextContainer(phone, kContentTextStyle),
                    pw.SizedBox(width: 10),
                    TextContainer(email, kContentTextStyle),
                  ]
              ),
              pw.SizedBox(height: 20),
              pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    Title('PROFESSIONAL SUMMARY'),
                    pw.SizedBox(height: 10),
                    TextContainer(about, kContentTextStyle),
                  ]
              ),
              pw.SizedBox(height: 10),
              Title('WORK HISTORY'),
              pw.SizedBox(height: 10),
              pw.Column(
                  children: [
                    ExperienceDetails(jobTitle1, company1, companyStartDate1, companyEndDate1, jobSummary1, jobLocation1),
                    pw.SizedBox(height: 10),
                    ExperienceDetails(jobTitle2, company2, companyStartDate2, companyEndDate2, jobSummary2, jobLocation2),
                  ]
              ),
              pw.SizedBox(height: 10),
              Title('SKILLS'),
              pw.SizedBox(height: 10),
              pw.Column(
                  children: [
                    Skill(skill1),
                    Skill(skill2),
                    Skill(skill3),
                  ]
              ),
              pw.SizedBox(height: 10),
              Title('EDUCATION'),
              pw.SizedBox(height: 10),
              pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    EducationDetails(university1, course1, edDate1, edLocation1,),
                    pw.SizedBox(width: 10),
                    EducationDetails(university2, course2, edDate2, edLocation2,)
                  ]
              )
            ]),
      ),);

    return pdf;
  }
}
