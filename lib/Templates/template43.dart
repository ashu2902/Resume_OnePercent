import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template43 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 18,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 22,
    color: PdfColors.black,
    fontWeight: pw.FontWeight.bold,
  );

  static pw.Container TextContainer(String text, var style, {pw.TextAlign? alignment = pw.TextAlign.left}) {
    return pw.Container(child: pw.Text(text, maxLines: 3, style: style, textAlign: alignment));
  }

  static pw.Column ExperienceDetails(String jobTitle, String company,
      String startDate, String endDate, String summary) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        TextContainer(jobTitle,
            kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
        TextContainer('$company | $startDate | $endDate', kContentTextStyle),
        pw.SizedBox(height: 10),
        TextContainer(summary, kContentTextStyle),
      ],
    );
  }

  static pw.Column EducationDetails(
      String university, String course, String date, String summary) {
    return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          TextContainer(course.toUpperCase(), kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
          TextContainer(
              '$university | $date', kContentTextStyle.copyWith(fontSize: 16)),
          TextContainer(summary, kContentTextStyle.copyWith(fontSize: 16)),
        ]);
  }

  static pw.Document generateText43(
    name,
    currentJobTitle,
    phone,
    email,
    address,
    about,
    jobTitle1,
    company1,
    companyStartDate1,
    companyEndDate1,
    jobSummary1,
    jobTitle2,
    company2,
    companyStartDate2,
    companyEndDate2,
    jobSummary2,
    course1,
    university1,
    edDate1,
    edSummary1,
    course2,
    university2,
    edDate2,
    edSummary2,
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
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                TextContainer(
                  name,
                  pw.TextStyle(
                    fontSize: 30,
                    fontWeight: pw.FontWeight.bold,
                    lineSpacing: 1.5,
                  ),
                ),
                TextContainer(
                  currentJobTitle,
                  pw.TextStyle(
                    fontSize: 20,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                TextContainer(
                  '$address - $phone - $email',
                  pw.TextStyle(
                    fontSize: 18,
                  ),
                ),
                pw.SizedBox(height: 15),
                TextContainer(about,
                  kContentTextStyle,
                  alignment: pw.TextAlign.center,
                ),
              ]
            ),
            pw.SizedBox(height: 15),
            TextContainer('WORK EXPERIENCE', kTitleTextStyle, alignment: pw.TextAlign.center),
            pw.SizedBox(height: 15),
            ExperienceDetails(jobTitle1, company1, companyStartDate1, companyEndDate1, jobSummary1),
            pw.SizedBox(height: 15),
            ExperienceDetails(jobTitle2, company2, companyStartDate2, companyEndDate2, jobSummary2),
            pw.SizedBox(height: 15),
            TextContainer('EDUCATION', kTitleTextStyle, alignment: pw.TextAlign.center),
            pw.SizedBox(height: 15),
            EducationDetails(university1, course1, edDate1, edSummary1),
            pw.SizedBox(height: 15),
            EducationDetails(university2, course2, edDate2, edSummary2),
            pw.SizedBox(height: 15),
            TextContainer('SKILLS', kTitleTextStyle, alignment: pw.TextAlign.center),
            pw.SizedBox(height: 15),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              children: [
                TextContainer(skill1, kContentTextStyle),
                pw.SizedBox(width: 30),
                TextContainer(skill2, kContentTextStyle),
                pw.SizedBox(width: 30),
                TextContainer(skill3, kContentTextStyle),

              ]
            )
      ],
        ),
      ),
    );

    return pdf;
  }
}
