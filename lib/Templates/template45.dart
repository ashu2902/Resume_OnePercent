

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template45 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 18,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 22,
    color: PdfColors.black,
    fontWeight: pw.FontWeight.bold,
  );
  static final kSpace = pw.SizedBox(height: 15);

  static pw.Container TextContainer(String text, var style,
      {pw.TextAlign? alignment = pw.TextAlign.left, int lines = 3}) {
    return pw.Container(
        child: pw.Text(text, maxLines: lines, style: style, textAlign: alignment));
  }

  static pw.Container Title(String text) {
    return pw.Container(
      width: double.infinity,
      color: PdfColors.lightBlue,
      child: pw.Padding(
        padding: pw.EdgeInsets.only(top: 5.0, bottom: 5.0, left: 50.0),
        child: pw.Text(
          text.toUpperCase(),
          style: kTitleTextStyle.copyWith(color: PdfColors.white),
          textAlign: pw.TextAlign.left,
        ),
      ),
    );
  }

  static pw.Row ExperienceDetails(String jobTitle, String company,
      String startDate, String endDate, String summary, String location) {
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        TextContainer('$startDate - $endDate', kContentTextStyle.copyWith(fontSize: 16),),
        pw.SizedBox(width: 10),
        pw.Container(
          width: 10,
          child: pw.Bullet(
            bulletSize: 10,
            bulletColor: PdfColors.lightBlue,
          ),
        ),
        pw.SizedBox(width: 40),
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            TextContainer('$jobTitle at $company, $location', kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold),),
            pw.Container(
              width: 400,
              child: pw.Text(
                summary,
                style: kContentTextStyle,
                maxLines: 2,
              ),
            ),
          ],
        ),

      ],
    );
  }

  static pw.Row EducationDetails(
      String university, String course, String date, String summary, String location) {
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        TextContainer(date, kContentTextStyle.copyWith(fontSize: 16),),
        pw.SizedBox(width: 10),
        pw.Container(
          width: 10,
          child: pw.Bullet(
            bulletSize: 10,
            bulletColor: PdfColors.lightBlue,
          ),
        ),
        pw.SizedBox(width: 40),
        pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            TextContainer('$course at $university, $location', kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold),),
            pw.Container(
              width: 400,
              child: pw.Text(
                summary,
                style: kContentTextStyle,
                maxLines: 2,
              ),
            ),
          ],
        ),

      ],
    );
  }

  static pw.Row Skill(String skillText){
    return pw.Row(
        children: [
          pw.Container(
            width: 10,
            child: pw.Bullet(
              bulletSize: 10,
              bulletColor: PdfColors.lightBlue,
            ),
          ),
          pw.SizedBox(width: 40),
          TextContainer(skillText, kContentTextStyle.copyWith(fontSize: 25)),
        ]
    );
  }

  static pw.Document generateText45(
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
      edSummary1,
      edLocation1,
      course2,
      university2,
      edDate2,
      edSummary2,
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
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              children: [
                TextContainer(
                  name.toUpperCase(),
                  pw.TextStyle(
                    fontSize: 30,
                    fontWeight: pw.FontWeight.bold,
                    lineSpacing: 1.5,
                    color: PdfColors.lightBlue,
                  ),
                ),
              ]
            ),
            kSpace,
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  TextContainer(
                    address,
                    kContentTextStyle.copyWith(fontSize: 16,),
                  ),
                  TextContainer(
                    phone,
                    kContentTextStyle.copyWith(fontSize: 16),
                  ),
                  TextContainer(
                    email,
                    kContentTextStyle.copyWith(fontSize: 16),
                  ),
                ]),
            kSpace,
            Title('Professional Summary'),
            kSpace,
            TextContainer(about, kContentTextStyle, lines: 5),
            kSpace,
            Title('Work Experience'),
            kSpace,
            ExperienceDetails(jobTitle1, company1, companyStartDate1, companyEndDate1, jobSummary1, jobLocation1),
            kSpace,
            ExperienceDetails(jobTitle2, company2, companyStartDate2, companyEndDate2, jobSummary2, jobLocation2),
            kSpace,
            Title('Education'),
            kSpace,
            EducationDetails(university1,  course1,
                edDate1, edSummary1, edLocation1 ),
            kSpace,
            EducationDetails(university2,  course2,
                edDate2, edSummary2, edLocation2 ),
            kSpace,
            Title('Skills'),
            kSpace,
            pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  Skill(skill1),
                  kSpace,
                  Skill(skill2),
                  kSpace,
                  Skill(skill3),
                ])
          ],
        ),
      ),
    );

    return pdf;
  }
}
