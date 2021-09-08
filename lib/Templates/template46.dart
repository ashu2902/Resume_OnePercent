import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template46 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 18,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 16,
    color: PdfColors.black,
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

  static pw.Container ExperienceDetails(String jobTitle, String company,
      String startDate, String endDate, String summary, String location) {
    return pw.Container(
      width: 400,
      child: pw.Column(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            TextContainer(
              '$startDate - $endDate',
              kContentTextStyle.copyWith(color: PdfColors.grey600),
            ),
            TextContainer(
              '$jobTitle | $company | $location',
              kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold),
            ),
            pw.Container(
                width: 400,
                child: pw.Text(
                  summary,
                  style: kContentTextStyle,
                  maxLines: 3,
                )
            )
          ]),
    );
  }

  static pw.Column EducationDetails(String university, String course, String date,
      String summary, String location) {
    return  pw.Column(
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

          pw.Container(
              width: 400,
              child: pw.Text(
                summary,
                style: kContentTextStyle,
                maxLines: 1,
              )
          ),
          TextContainer('$university, $location', kContentTextStyle),
        ]);
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

  static pw.Document generateText46(
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
    lang1,
    lang2,
  ) {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.stretch,
          children: [
            pw.Row(mainAxisAlignment: pw.MainAxisAlignment.start, children: [
              TextContainer(
                name.toUpperCase(),
                pw.TextStyle(
                  fontSize: 30,
                  fontWeight: pw.FontWeight.bold,
                  lineSpacing: 1.5,
                  color: PdfColors.lightBlue,
                ),
              ),
            ]),
            kVerticalSpace,
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                children: [
              TextContainer(
                address,
                kContentTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
              kHorizontalSpace,
              TextContainer(
                phone,
                kContentTextStyle.copyWith(fontSize: 12),
              ),
              kHorizontalSpace,
              TextContainer(
                email,
                kContentTextStyle.copyWith(fontSize: 12),
              ),
            ]),
            pw.Divider(
              height: 10.0,
              thickness: 5,
              color: PdfColors.yellow,
            ),
            kVerticalSpace,
            pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
              TextContainer('PROFESSIONAL\nSUMMARY', kTitleTextStyle),
              pw.SizedBox(width: 40),
              pw.Expanded(
                child: TextContainer(
                    about,
                    kContentTextStyle),
              )
            ]),
            kVerticalSpace,
            pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
              TextContainer('WORK HISTORY', kTitleTextStyle),
              kHorizontalSpace,
              pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    ExperienceDetails(
                        jobTitle1,
                        company1,
                        companyStartDate1,
                        companyEndDate1,
                        jobSummary1,
                        jobLocation1),
                    kVerticalSpace,
                    ExperienceDetails(
                        jobTitle2,
                        company2,
                        companyStartDate2,
                        companyEndDate2,
                        jobSummary2,
                        jobLocation2),
                  ]),
            ]),
            kVerticalSpace,
            kVerticalSpace,
            pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
              TextContainer('SKILLS', kTitleTextStyle),
              pw.SizedBox(width: 100),
              pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    Skill(skill1),
                    kVerticalSpace,
                    Skill(skill2),
                    kVerticalSpace,
                    Skill(skill3),
                  ])
            ]),
            kVerticalSpace,
            kVerticalSpace,
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
              TextContainer('LANGUAGES', kTitleTextStyle),
              pw.SizedBox(width: 60),
              pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    Skill(lang1),
                    kVerticalSpace,
                    Skill(lang2),
                  ])
            ]),
            kVerticalSpace,
            kVerticalSpace,
            pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  TextContainer('EDUCATION', kTitleTextStyle),
                  pw.SizedBox(width: 80),
                  pw.Column(
                    children: [
                      EducationDetails(university1, course1, edDate1, edSummary1, edLocation1),
                      EducationDetails(university2, course2, edDate2, edSummary2, edLocation2),
                    ]
                  )


          ],
        ),
      ]),
    ),);

    return pdf;
  }
}
