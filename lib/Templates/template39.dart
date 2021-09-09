import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template39 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 12,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 15,
    color: PdfColors.black,
    fontWeight: pw.FontWeight.bold,
  );

  static pw.Container TextContainer(String text, pw.TextStyle style) {
    return pw.Container(child: pw.Text(text, style: style));
  }

  static pw.Column EducationDetails(
      String course, String university,  String date) {
    return pw.Column(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.stretch,
        children: [
          TextContainer(course,
              kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
          TextContainer(university, kContentTextStyle),
          TextContainer(date, kContentTextStyle),
        ]);
  }
  static pw.Container Title(String text) {
    return pw.Container(
      width: double.infinity,
      color: PdfColors.black,
      child: pw.Padding(
        padding: pw.EdgeInsets.only(top: 5.0, bottom: 5.0, left: 20.0),
        child: pw.Text(
          text.toUpperCase(),
          style: kTitleTextStyle.copyWith(color: PdfColors.white),
          textAlign: pw.TextAlign.left,
        ),
      ),
    );
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
      skill1,
      skill2,
      skill3,
      lang,
      about,
      course1,
      institutionName1,
      eduDate1,
      course2,
      institutionName2,
      eduDate2,
      Projecttitle1,
      ProjectDescription1,
      Projecttitle2,
      ProjectDescription2,
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
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Flexible(
              flex: 1,
              child: pw.Container(
                color: PdfColors.black,
                child: pw.Expanded(
                  child: pw.Padding(
                    padding:
                    pw.EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        TextContainer(
                          name,
                          pw.TextStyle(
                              fontSize: 50, fontWeight: pw.FontWeight.bold,color: PdfColors.white),
                        ),
                        pw.SizedBox(height: 15),
                        TextContainer(email, kContentTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 10),
                        TextContainer(phone, kContentTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 10),
                        TextContainer(address, kContentTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 20),
                        TextContainer('ABOUT ME', kTitleTextStyle.copyWith(color: PdfColors.white)),
                        pw.Container(width: 30,child: pw.Divider(thickness: 1,color: PdfColors.white),),
                        pw.SizedBox(height: 20),
                        TextContainer(
                          about,
                          kContentTextStyle.copyWith(color: PdfColors.white),
                        ),
                        pw.SizedBox(height: 20),
                        TextContainer('SKILLS', kTitleTextStyle.copyWith(color: PdfColors.white,fontSize: 15)),
                        pw.Container(width: 30,child: pw.Divider(thickness: 1,color: PdfColors.white,),),
                        pw.SizedBox(height: 10),
                        TextContainer(skill1, kContentTextStyle.copyWith(color: PdfColors.white)),
                        TextContainer(skill2, kContentTextStyle.copyWith(color: PdfColors.white)),
                        TextContainer(skill3, kContentTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 20),
                        TextContainer('DETAILS', kTitleTextStyle.copyWith(color: PdfColors.white,fontSize: 15)),
                        pw.Container(width: 30,child: pw.Divider(thickness: 1,color: PdfColors.white,),),
                        TextContainer(email, kContentTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 10),
                        TextContainer(phone, kContentTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 10),
                        TextContainer(address, kContentTextStyle.copyWith(color: PdfColors.white)),
                        pw.SizedBox(height: 20),
                        TextContainer('LANGUAGES', kTitleTextStyle.copyWith(color: PdfColors.white,fontSize: 15)),
                        pw.Container(width: 30,child: pw.Divider(thickness: 1,color: PdfColors.white,),),
                        pw.SizedBox(height: 10),
                        TextContainer(
                            lang,
                            kContentTextStyle.copyWith(color: PdfColors.white)
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            pw.SizedBox(width: 30),
            pw.Flexible(
              flex: 1,
              child: pw.Container(
                child: pw.Expanded(
                  child: pw.Padding(
                    padding: pw.EdgeInsets.symmetric(vertical: 20.0),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        Title('EDUCATION'),
                        pw.SizedBox(height: 20),
                        EducationDetails(
                            course1, institutionName1, eduDate1),
                        pw.SizedBox(height: 10),
                        EducationDetails(
                            course2, institutionName2, eduDate2),
                        pw.SizedBox(height: 20),
                        Title('PROJECTS'),
                        pw.SizedBox(height: 10),
                        pw.Text('$Projecttitle1',),
                        pw.SizedBox(height: 5),
                        pw.Text('$ProjectDescription1',),
                        pw.SizedBox(height: 5),
                        //2
                        pw.SizedBox(height: 10),
                        pw.Text('$Projecttitle2',),
                        pw.SizedBox(height: 5),
                        pw.Text('$ProjectDescription2',),
                        pw.SizedBox(height: 20),
                        Title('EXPERIENCE'),
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
