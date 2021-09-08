import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template48 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 18,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 22,
    color: PdfColors.blueGrey,
    fontWeight: pw.FontWeight.bold,
  );
  static final kVerticalSpace = pw.SizedBox(height: 15);
  static final kHorizontalSpace = pw.SizedBox(width: 40);
  static final kHorizontalPadding = pw.EdgeInsets.symmetric(horizontal: 30);
  static final kDivider = pw.Divider(
    thickness: 1,
    height: 1,
    color: PdfColors.blueGrey,
  );
  static String getInitials(String name){
    String initials = '';
    initials += name[0];
    initials += name[name.indexOf(' ') + 1];
    return initials;
  }
  static pw.Container TextContainer(String text, var style,
      {pw.TextAlign? alignment = pw.TextAlign.left, int lines = 3}) {
    return pw.Container(
        child:
            pw.Text(text, maxLines: lines, style: style, textAlign: alignment));
  }

  static pw.Padding Title(String text) {
    return pw.Padding(
      padding: pw.EdgeInsets.only(left: 10),
      child: TextContainer(text, kTitleTextStyle),
    );
  }

  static pw.Padding ExperienceDetails(String jobTitle, String company,
      String startDate, String endDate, String summary, String location) {
    return pw.Padding(
      padding: pw.EdgeInsets.only(left: 10),
      child:
          pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
        TextContainer(
          '$company - $jobTitle',
          kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold),
        ),
        TextContainer('$location', kContentTextStyle),
        TextContainer(
          '$startDate - $endDate',
          kContentTextStyle.copyWith(fontStyle: pw.FontStyle.italic),
        ),
        pw.SizedBox(height: 5),
        TextContainer(summary, kContentTextStyle,
            alignment: pw.TextAlign.justify),
      ]),
    );
  }

  static pw.Column EducationDetails(
      String university, String course, String date, String location) {
    return pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        mainAxisAlignment: pw.MainAxisAlignment.start,
        children: [
          TextContainer(course,
              kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
          TextContainer(
              date, kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
          TextContainer('$university,\n$location', kContentTextStyle),
        ]);
  }

  static pw.Row Skill(String skillText) {
    return pw.Row(children: [
      pw.Container(
        width: 10,
        child: pw.Bullet(
          bulletSize: 10,
          bulletColor: PdfColors.blueGrey,
        ),
      ),
      pw.SizedBox(width: 40),
      TextContainer(skillText, kContentTextStyle.copyWith(fontSize: 18)),
    ]);
  }

  static pw.Document generateText48(
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
        margin: pw.EdgeInsets.all(0.0),
        build: (context) => pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.stretch,
            children: [
              pw.Container(
                color: PdfColors.blueGrey100,
                height: 150,
                child: pw.Padding(
                  padding: kHorizontalPadding,
                  child: pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        TextContainer(
                          '${getInitials(name)} / ',
                          pw.TextStyle(
                            fontSize: 48,
                            color: PdfColors.blueGrey,
                          ),
                        ),
                        TextContainer(
                          name,
                          pw.TextStyle(
                            fontSize: 48,
                            color: PdfColors.blueGrey,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        pw.SizedBox(height: 10),
                      ]),
                ),
              ),
              pw.SizedBox(height: 10),
              pw.Padding(
                padding: kHorizontalPadding,
                child: TextContainer(
                    '$email | $phone | $address',
                    kContentTextStyle.copyWith(color: PdfColors.blueGrey)),
              ),
              pw.SizedBox(height: 20),
              pw.Padding(
                padding: pw.EdgeInsets.symmetric(horizontal: 10),
                child: kDivider,
              ),
              pw.SizedBox(height: 20),
              pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Container(
                        width: 350,
                        child: pw.Padding(
                          padding: pw.EdgeInsets.only(left: 10),
                          child: pw.Column(
                              mainAxisAlignment:
                                  pw.MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                Title('PROFESSIONAL SUMMARY'),
                                pw.SizedBox(height: 10),
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(left: 10),
                                  child: TextContainer(
                                      about,
                                      kContentTextStyle,
                                      alignment: pw.TextAlign.justify,
                                      lines: 4),
                                ),
                                pw.SizedBox(height: 10),
                                Title('WORK HISTORY'),
                                pw.SizedBox(height: 10),
                                ExperienceDetails(
                                    jobTitle1,
                                    company1,
                                    companyStartDate1,
                                    companyEndDate1,
                                    jobSummary1,
                                    jobLocation1),
                                pw.SizedBox(height: 40),
                                ExperienceDetails(
                                    jobTitle2,
                                    company2,
                                    companyStartDate2,
                                    companyEndDate2,
                                    jobSummary2,
                                    jobLocation2),
                              ]),
                        )),
                    pw.SizedBox(width: 20),
                    pw.Container(
                      width: 250,
                      child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Padding(
                              padding: pw.EdgeInsets.only(left: 10),
                              child: TextContainer('SKILLS', kTitleTextStyle),
                            ),
                            pw.SizedBox(height: 10),
                            Skill(skill1),
                            Skill(skill2),
                            Skill(skill3),
                            pw.SizedBox(height: 15),
                            Title('EDUCATION'),
                            pw.SizedBox(height: 15),
                            pw.Padding(
                              padding: pw.EdgeInsets.only(left: 10),
                              child: EducationDetails(university1,
                                  course1, edDate1, edLocation1),
                            ),
                            pw.SizedBox(height: 10),
                            pw.Padding(
                                padding:
                                    pw.EdgeInsets.only(left: 10, right: 10),
                                child: EducationDetails(university2,
                                    course2, edDate2, edLocation2)),
                          ]),
                    ),
                  ]),
            ]),
      ),
    );

    return pdf;
  }
}
