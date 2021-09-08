import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template42 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 19,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 22,
    color: PdfColors.lightBlue,
    fontWeight: pw.FontWeight.bold,
  );

  static pw.Container TextContainer(String text, var style) {
    return pw.Container(child: pw.Text(text, maxLines: 4, style: style));
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
        pw.Container(
          width: 300,
          child: pw.Text(
            summary,
            style: kContentTextStyle,
          ),
        )
      ],
    );
  }

  static pw.Column EducationDetails(
      String university, String course, String date, String summary) {
    return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          TextContainer(course.toUpperCase(), kContentTextStyle),
          TextContainer(
              '$university | $date', kContentTextStyle.copyWith(fontSize: 16)),
          TextContainer(summary, kContentTextStyle.copyWith(fontSize: 16)),
        ]);
  }

  static pw.Document generateText42(
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
        margin: pw.EdgeInsets.all(0.0),
        build: (context) => pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.stretch,
          children: [
            pw.Container(
              color: PdfColors.lightBlue,
              child: pw.Padding(
                padding: pw.EdgeInsets.symmetric(horizontal: 10.0),
                child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      TextContainer(
                        name,
                        pw.TextStyle(
                          fontSize: 30,
                          lineSpacing: 2,
                          color: PdfColors.white,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      TextContainer(
                        currentJobTitle,
                        pw.TextStyle(
                          fontSize: 22,
                          lineSpacing: 2,
                          color: PdfColors.white,
                        ),
                      ),
                      pw.SizedBox(height: 20),
                      pw.Divider(
                          height: 1, thickness: 4, color: PdfColors.white),
                      pw.SizedBox(height: 20),
                      TextContainer('CONTACT',
                          kTitleTextStyle.copyWith(color: PdfColors.white)),
                      pw.SizedBox(height: 20),
                      TextContainer(
                          phone,
                          kContentTextStyle.copyWith(
                              color: PdfColors.white, fontSize: 16)),
                      TextContainer(
                          email,
                          kContentTextStyle.copyWith(
                              color: PdfColors.white, fontSize: 16)),
                      TextContainer(
                          address,
                          kContentTextStyle.copyWith(
                              color: PdfColors.white, fontSize: 16)),
                    ]),
              ),
            ),
            pw.Container(
              width: 400,
              child: pw.Padding(
                padding: pw.EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    TextContainer('PROFILE', kTitleTextStyle),
                    pw.SizedBox(height: 10),
                    TextContainer(
                        about,
                        kContentTextStyle),
                    pw.SizedBox(height: 10),
                    TextContainer('EXPERIENCE', kTitleTextStyle),
                    pw.SizedBox(height: 10),
                    ExperienceDetails(
                        jobTitle1,
                        company1,
                        companyStartDate1,
                        companyEndDate1,
                        jobSummary1),
                    pw.SizedBox(height: 10),
                    ExperienceDetails(
                        jobTitle2,
                        company2,
                        companyStartDate2,
                        companyEndDate2,
                        jobSummary2),
                    pw.SizedBox(height: 10),
                    TextContainer('EDUCATION', kTitleTextStyle),
                    pw.SizedBox(height: 10),
                    EducationDetails(university1, course1,
                        edDate1, edSummary1),
                    pw.SizedBox(height: 10),
                    EducationDetails(university2, course2,
                        edDate2, edSummary2),
                    pw.SizedBox(height: 10),
                    TextContainer('SKILLS', kTitleTextStyle),
                    pw.SizedBox(height: 10),
                    TextContainer(skill1, kContentTextStyle),
                    TextContainer(skill2, kContentTextStyle),
                    TextContainer(skill3, kContentTextStyle),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return pdf;
  }
}
