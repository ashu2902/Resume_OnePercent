import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template20 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 20,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 25,
    color: PdfColors.black,
    fontWeight: pw.FontWeight.bold,
  );

  static final kDivider = pw.Container(
    height: 5,
    width: 50,
    color: PdfColors.grey400,
  );

  static pw.Container TextContainer(String text, pw.TextStyle style) {
    return pw.Container(child: pw.Text(text, style: style));
  }

  static pw.Column ExperienceDetails(String jobTitle, String company,
      String location, String startDate, String endDate, String summary) {
    return pw.Column(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        TextContainer(
          jobTitle,
          kContentTextStyle.copyWith(
            fontWeight: pw.FontWeight.bold,
            fontSize: 25,
          ),
        ),
        TextContainer(
          company + '/ ' + startDate + ' - ' + endDate,
          kContentTextStyle.copyWith(fontStyle: pw.FontStyle.italic),
        ),
        TextContainer(
          summary,
          kContentTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      ],
    );
  }

  static pw.Column EducationDetails(
      String course, String university, String location, String date) {
    return pw.Column(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.stretch,
        children: [
          TextContainer(course,
              kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
          TextContainer(university + ', ' + location, kContentTextStyle),
          TextContainer(date, kContentTextStyle),
        ]);
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

  static pw.Document generateText20(
    name,
    currentJobTitle,
    about,
    jobTitle1,
    company1,
    compLocation1,
    compStartDate1,
    compEndDate1,
    compSummary1,
    jobTitle2,
    company2,
    compLocation2,
    compStartDate2,
    compEndDate2,
    compSummary2,
    email,
    phone,
    address,
    skill1,
    skill2,
    skill3,
    course1,
    institute1,
    edLocation1,
    edDate1,
    course2,
    institute2,
    edLocation2,
    edDate2,
  ) {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.all(0.0),
        build: (context) => pw.Column(
          children: [
            //Name
            pw.Row(
              children: [
                pw.Expanded(
                  child: pw.Container(
                    color: PdfColors.blue700,
                    child: pw.Column(
                      children: [
                        pw.SizedBox(height: 20),
                        TextContainer(
                          name,
                          pw.TextStyle(
                            fontSize: 40,
                            letterSpacing: 2,
                            color: PdfColors.white,
                          ),
                        ),
                        pw.Divider(
                          color: PdfColors.white,
                          endIndent: 200,
                          indent: 200,
                        ),
                        TextContainer(
                          jobTitle1.toUpperCase(),
                          kTitleTextStyle.copyWith(color: PdfColors.white),
                        ),
                        pw.SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            pw.Expanded(
              child: pw.Padding(
                padding: pw.EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                child: pw.Row(
                  children: [
                    pw.Expanded(
                      child: pw.Container(
                        child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            TextContainer('ABOUT', kTitleTextStyle),
                            pw.Divider(
                              color: PdfColors.grey,
                              thickness: 5,
                              endIndent: 300,
                            ),
                            TextContainer(about, kContentTextStyle),
                            pw.SizedBox(height: 10),
                            TextContainer('EXPERIENCE', kTitleTextStyle),
                            pw.Divider(
                              color: PdfColors.grey,
                              thickness: 5,
                              endIndent: 300,
                            ),
                            ExperienceDetails(
                                jobTitle1,
                                company1,
                                compLocation1,
                                compStartDate1,
                                compEndDate1,
                                compSummary1),
                            pw.SizedBox(height: 10),
                            ExperienceDetails(
                                jobTitle2,
                                company2,
                                compLocation2,
                                compStartDate2,
                                compEndDate2,
                                compSummary2),
                          ],
                        ),
                      ),
                    ),
                    pw.Container(
                      width: 150,
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          TextContainer(email, kContentTextStyle),
                          pw.SizedBox(height: 5),
                          TextContainer(phone, kContentTextStyle),
                          pw.SizedBox(height: 5),
                          TextContainer(address, kContentTextStyle),
                          pw.SizedBox(height: 10),
                          TextContainer('SKILLS', kTitleTextStyle),
                          pw.Divider(
                            color: PdfColors.grey,
                            thickness: 5,
                            endIndent: 100,
                          ),
                          pw.SizedBox(height: 10),
                          TextContainer(skill1, kContentTextStyle),
                          pw.SizedBox(height: 5),
                          TextContainer(skill2, kContentTextStyle),
                          pw.SizedBox(height: 5),
                          TextContainer(skill3, kContentTextStyle),
                          pw.SizedBox(height: 10),
                          TextContainer('EDUCATION', kTitleTextStyle),
                          pw.Divider(
                            color: PdfColors.grey,
                            thickness: 5,
                            endIndent: 100,
                          ),
                          pw.SizedBox(height: 10),
                          EducationDetails(
                              course1, institute1, edLocation1, edDate1),
                          pw.SizedBox(height: 10),
                          EducationDetails(
                              course2, institute2, edLocation2, edDate2),
                        ],
                      ),
                    ),
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
