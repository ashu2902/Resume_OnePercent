
import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template41 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 20,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 19,
    color: PdfColors.grey800,
    fontWeight: pw.FontWeight.bold,
  );

  static final kLatoBold = pw.TextStyle(
    fontSize: 16,
    fontWeight: pw.FontWeight.bold,
  );
  static final kLatoNormal = pw.TextStyle(
    fontSize: 16,
  );

  static final kDivider = pw.Container(
    height: 5,
    width: 50,
    color: PdfColors.grey400,
  );

  static pw.Container TextContainer(String text, var style) {
    return pw.Container(child: pw.Text(text, maxLines: 4, style: style));
  }

  static pw.Row ExperienceDetails(String jobTitle, String company, String startDate, String endDate, String summary) {
    return pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [

                TextContainer(company, kLatoBold.copyWith(fontSize: 22)),
                TextContainer(jobTitle, kLatoNormal),
                TextContainer('$startDate - $endDate', kLatoBold.copyWith(fontSize: 16)),
              ]
          ),
          pw.SizedBox(width: 15),
          pw.Expanded(
            child:pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  TextContainer(summary, kLatoNormal.copyWith(fontSize: 18)),
                ]
            ),
          ),

        ]);
  }

  static pw.Column EducationDetails(
      String university, String course, String date) {
    return  pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          TextContainer(university, kLatoBold.copyWith(fontSize: 22)),
          TextContainer(course, kLatoNormal),
          TextContainer('$date', kLatoNormal.copyWith(fontStyle: pw.FontStyle.italic)),
        ]
    );
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
  static pw.Document generateText41(
    name,
    currentJobTitle,
    phone,
    email,
    location,
    about,
    company1,
    jobTitle1,
    companyStartDate1,
    companyEndDate1,
    jobSummary1,
    company2,
    jobTitle2,
    companyStartDate2,
    companyEndDate2,
    jobSummary2,
    university1,
    course1,
    edDate1,
    university2,
    course2,
    edDate2,
    skill1,
    skill2,
    skill3,
  ) {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.all(20.0),
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            //Bio
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Column(
                    children: [
                      TextContainer(
                        name,
                        pw.TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      TextContainer(
                        currentJobTitle,
                        pw.TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                      children: [
                        pw.Row(
                          children: [
                            pw.Container(
                              width: 300,
                              child: pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                                  children: [
                                    TextContainer(phone, kLatoNormal),
                                    TextContainer('abhisheksubba.py@email.com', kLatoNormal),
                                    TextContainer(location, kLatoNormal),
                                  ]
                              ),
                            ),
                          ]
                        ),

                  ])
                ]),
            pw.SizedBox(height: 10),
            pw.Divider(height: 2),
            pw.SizedBox(height: 10),
            //About
            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                TextContainer('ABOUT', kTitleTextStyle),
                pw.SizedBox(width: 65),
                pw.Expanded(
                  child: TextContainer(about, kLatoNormal.copyWith(fontSize: 22)),
                ),
              ]
            ),
            pw.SizedBox(height: 10),
            pw.Divider(height: 2),
            pw.SizedBox(height: 10),
            //Experience
            TextContainer('EXPERIENCE', kTitleTextStyle),
            pw.SizedBox(height: 10),
            ExperienceDetails(jobTitle1, company1, companyStartDate1, companyEndDate1, jobSummary1),
            pw.SizedBox(height: 10),
            ExperienceDetails(jobTitle2, company2, companyStartDate2, companyEndDate2, jobSummary2),
            //Education
            pw.SizedBox(height: 10),
            pw.Divider(height: 2),
            pw.SizedBox(height: 10),

            pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    TextContainer('EDUCATION', kTitleTextStyle),
                    pw.SizedBox(height: 10),
                    EducationDetails(university1, course1, edDate1),
                    pw.SizedBox(height: 10),
                    EducationDetails(university2, course2, edDate2),
                  ]
                ),
                pw.SizedBox(width: 65),
                pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    TextContainer('SKILLS', kTitleTextStyle),
                    pw.SizedBox(height: 10),
                    TextContainer(skill1, kLatoNormal.copyWith(fontSize: 18)),
                    pw.SizedBox(height: 10),
                    TextContainer(skill2, kLatoNormal.copyWith(fontSize: 18)),
                    pw.SizedBox(height: 10),
                    TextContainer(skill3, kLatoNormal.copyWith(fontSize: 18)),
                  ]
                )
              ]
            ),
          ],
        ),
      ),
    );

    return pdf;
  }
}
