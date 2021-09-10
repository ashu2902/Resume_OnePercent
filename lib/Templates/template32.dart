import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template32 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 20,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 25,
    color: PdfColors.black,
    fontWeight: pw.FontWeight.bold,
  );

  static pw.Container TextContainer(String text, pw.TextStyle style) {
    return pw.Container(child: pw.Text(text, style: style));
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

  static pw.Column ExperienceDetails(String jobTitle, String company,
      String startDate, String endDate, String summary) {
    return pw.Column(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        TextContainer(
          jobTitle,
          kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold),
        ),
        TextContainer(
          company + '/ ' + startDate + ' - ' + endDate,
          kContentTextStyle.copyWith(fontStyle: pw.FontStyle.italic),
        ),
        TextContainer(summary, kContentTextStyle),
      ],
    );
  }

  static pw.Document generateText(
      String name,
      email,
      phone,
      address,
      about,
      lang,
      skill1,
      skill2,
      skill3,
      course1,
      institutionName1,
      eduLocation1,
      eduDate1,
      course2,
      institutionName2,
      eduDate2,
      eduLocation2,
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
      )  {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.all(0),
        build: (context) => pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Flexible(
              flex: 1,
              child: pw.Container(
                color: PdfColors.blueGrey700,
                child: pw.Expanded(
                  child: pw.Padding(
                    padding:
                    pw.EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        TextContainer(
                          name,
                          pw.TextStyle(
                              fontSize: 30, fontWeight: pw.FontWeight.bold,color: PdfColors.white),
                        ),
                        pw.SizedBox(height: 15),
                        pw.SizedBox(height: 20),
                        TextContainer(email, kContentTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 10),
                        TextContainer(phone, kContentTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 10),
                        TextContainer(address, kContentTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 20),
                        TextContainer('PROFILE', kTitleTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 10),
                        pw.SizedBox(height: 10),
                        TextContainer(
                          about,
                          kContentTextStyle.copyWith(color: PdfColors.white),
                        ),
                        pw.SizedBox(height: 20),
                        TextContainer('LANGUAGES', kTitleTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 10),
                        pw.SizedBox(height: 10),
                        TextContainer(
                          lang,
                          kContentTextStyle.copyWith(color: PdfColors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Flexible(
              flex: 1,
              child: pw.Container(
                child: pw.Expanded(
                  child: pw.Padding(
                    padding: pw.EdgeInsets.symmetric(vertical: 20.0),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        TextContainer('SKILLS', kTitleTextStyle),

                        TextContainer(skill1, kContentTextStyle),
                        TextContainer(skill2, kContentTextStyle),
                        TextContainer(skill3, kContentTextStyle),
                        pw.SizedBox(height: 20),
                        TextContainer('EDUCATION', kTitleTextStyle),
                        pw.SizedBox(height: 20),
                        EducationDetails(
                            course1, institutionName1, eduLocation1, eduDate1),
                        pw.SizedBox(height: 10),
                        EducationDetails(
                            course2, institutionName2, eduLocation2, eduDate2),
                        pw.SizedBox(height: 20),
                        TextContainer('EXPERIENCE', kTitleTextStyle),
                        pw.SizedBox(height: 10),
                        pw.SizedBox(height: 10),
                        ExperienceDetails(jobTitle1, organization1,
                            jobStartDate1, jobEndDate1, jobSummary1),
                        pw.SizedBox(height: 10),
                        ExperienceDetails(jobTitle2, organization2,
                            jobStartDate2, jobEndDate2, jobSummary2),
                      ],
                    ),
                  ),
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
