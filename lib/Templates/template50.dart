import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template50 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 18,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 22,
    color: PdfColors.black,
    fontWeight: pw.FontWeight.bold,
    fontStyle: pw.FontStyle.italic,
  );
  static final kDivider = pw.Container(
    color: PdfColors.grey600,
    height: 5,
  );

  static String getInitials(String name) {
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

  static pw.Row ExperienceDetails(String jobTitle, String company,
      String startDate, String endDate, String summary, String location) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                TextContainer(
                    '$startDate\n$endDate', kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
              ]),
          pw.SizedBox(width: 20),
          pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                TextContainer(
                    '$company, $location', kContentTextStyle.copyWith(fontStyle: pw.FontStyle.italic)),
                pw.SizedBox(height: 5),
                pw.Container(
                    width: 450,
                    child: pw.Text(
                      summary,
                      style: kContentTextStyle,
                    )),
              ])
        ]);
  }

  static pw.Row EducationDetails(
      String university, String course, String date, String location, String summary) {
    return pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                TextContainer(
                    '$date', kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
              ]),
          pw.SizedBox(width: 20),
          pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                TextContainer(
                    '$university, $location', kContentTextStyle.copyWith(fontStyle: pw.FontStyle.italic)),
                pw.SizedBox(height: 5),
                pw.Container(
                    width: 400,
                    child: pw.Text(
                      summary,
                      style: kContentTextStyle,
                      maxLines: 2,
                    )),
              ])
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

  static pw.Document generateText50(
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
    edSummary1,
    course2,
    university2,
    edDate2,
    edLocation2,
    edSummary2,
    skill1,
    skill2,
    skill3,
  ) {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.all(30.0),
        build: (context) => pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.stretch,
            children: [
              pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    TextContainer(
                      name,
                      pw.TextStyle(
                        color: PdfColors.grey900,
                        fontSize: 35,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                  ]),
              pw.Divider(
                height: 5,
                thickness: 5,
                color: PdfColors.grey600,
              ),
              pw.SizedBox(height: 15),
              pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    TextContainer(
                      '$email | $phone | $address',
                      kContentTextStyle.copyWith(fontSize: 12),
                    ),
                  ]),
              pw.SizedBox(height: 30),
              TextContainer('PROFILE', kTitleTextStyle),
              pw.Divider(
                height: 5,
                thickness: 5,
                color: PdfColors.grey600,
              ),
              pw.SizedBox(height: 20),
              pw.Padding(
                padding: pw.EdgeInsets.only(left: 60),
                child: TextContainer(
                    about,
                    kContentTextStyle),
              ),
              pw.SizedBox(height: 20),
              TextContainer('EXPERIENCE', kTitleTextStyle),
              pw.Divider(
                height: 5,
                thickness: 5,
                color: PdfColors.grey600,
              ),
              pw.SizedBox(height: 20),
              ExperienceDetails(jobTitle1, company1, companyStartDate1, companyEndDate1, jobSummary1, jobLocation1),
              pw.SizedBox(height: 10),
              ExperienceDetails(jobTitle2, company2, companyStartDate2, companyEndDate2, jobSummary2, jobLocation2),
              pw.SizedBox(height: 20),
              TextContainer('EDUCATION', kTitleTextStyle),
              pw.Divider(
                height: 5,
                thickness: 5,
                color: PdfColors.grey600,
              ),
              pw.SizedBox(height: 20),
              EducationDetails(university1, course1, edDate1, edLocation1, edSummary1),
              pw.SizedBox(height: 10),
              EducationDetails(university2, course2, edDate2, edLocation2, edSummary2),
              pw.SizedBox(height: 20),
              TextContainer('SKILLS', kTitleTextStyle),
              pw.Divider(
                height: 5,
                thickness: 5,
                color: PdfColors.grey600,
              ),
              pw.SizedBox(height: 20),
              pw.Padding(
                padding: pw.EdgeInsets.only(left: 60),
                child: pw.Row(
                  children: [
                    Skill(skill1),
                    Skill(skill2),
                    Skill(skill3),

                  ]
                )
              )

            ]),
      ),
    );

    return pdf;
  }
}
