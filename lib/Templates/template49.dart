import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template49 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 18,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 22,
    color: PdfColors.black,
    fontWeight: pw.FontWeight.bold,
    fontStyle: pw.FontStyle.italic,
  );

  static String getInitials(String name) {
    String initials = '';
    initials += name[0];
    //this is the space between first name and last name
    int indexOfSpace = name.indexOf(' ');
    if (indexOfSpace < 0) {
      return initials;
    }
    initials += name[name.indexOf(' ') + 1];
    return initials;
  }
  static pw.Container TextContainer(String text, var style,
      {pw.TextAlign? alignment = pw.TextAlign.left, int lines = 3}) {
    return pw.Container(
        child:
        pw.Text(text, maxLines: lines, style: style, textAlign: alignment));
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
        pw.Container(
          width: 300,
          child: pw.Text(
            summary,
            style: kContentTextStyle,
            textAlign: pw.TextAlign.justify,
            maxLines: 4,
          )
        )
      ]),
    );
  }

  static pw.Container EducationDetails(
      String university, String course, String date, String location) {
    return pw.Container(
        width: 200,
        child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              TextContainer(course,
                  kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
              TextContainer(
                  date, kContentTextStyle.copyWith(fontWeight: pw.FontWeight.bold)),
              TextContainer('$university,\n$location', kContentTextStyle),
            ])
    );
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

  static pw.Document generateText49(
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
              //Top
              pw.Container(
                width: 300,
                color: PdfColors.lightBlue,
                child: pw.Padding(
                  padding: pw.EdgeInsets.symmetric(vertical: 20.0),
                  child: pw.Column(
                    children: [
                      pw.Container(
                        decoration: pw.BoxDecoration(
                          border: pw.Border.all(color: PdfColors.white),
                        ),
                        child: pw.Padding(
                          padding: pw.EdgeInsets.all(10.0),
                          child: pw.Text(
                            getInitials(name),
                            style: pw.TextStyle(
                              fontSize: 25,
                              color: PdfColors.white,
                            ),
                          ),
                        ),
                      ),
                      TextContainer(name, pw.TextStyle(
                        fontSize: 32,
                        color: PdfColors.white,
                      ),),
                    ],
                  ),
                )
              ),
              pw.SizedBox(height: 30),
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  //col 1
                  pw.Padding(
                    padding: pw.EdgeInsets.symmetric(horizontal: 10.0),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        TextContainer('Professional Summary', kTitleTextStyle),
                        pw.SizedBox(height: 10),
                        pw.Container(
                          width: 300,
                          child: pw.Text(
                            about,
                            style: kContentTextStyle,
                            textAlign: pw.TextAlign.justify,
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        TextContainer('Professional Skills', kTitleTextStyle),
                        pw.SizedBox(height: 10),
                        Skill(skill1),
                        Skill(skill2),
                        Skill(skill3),
                        pw.SizedBox(height: 10),
                        TextContainer('Work History', kTitleTextStyle),
                        pw.SizedBox(height: 10),
                        ExperienceDetails(jobTitle1, company1, companyStartDate1, companyEndDate1, jobSummary1, jobLocation1),
                        pw.SizedBox(height: 10),
                        ExperienceDetails(jobTitle2, company2, companyStartDate2, companyEndDate2, jobSummary2, jobLocation2),


                      ],
                    ),
                  ),
                  //Col 2
                  pw.Padding(
                    padding: pw.EdgeInsets.symmetric(horizontal: 10.0),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                          width: 200,
                          child: pw.Text(
                            email,
                            style: kContentTextStyle,
                          ),
                        ),
                        pw.Container(
                          width: 200,
                          child: pw.Text(
                            phone,
                            style: kContentTextStyle,
                          ),
                        ),
                        pw.Container(
                          width: 200,
                          child: pw.Text(
                            address,
                            style: kContentTextStyle,
                          ),
                        ),
                        pw.SizedBox(height: 10),
                        TextContainer('Education', kTitleTextStyle),
                        pw.SizedBox(height: 10),
                        EducationDetails(university1, course1, edDate1, edLocation1),
                        pw.SizedBox(height: 10),
                        EducationDetails(university2, course2, edDate2, edLocation2),
                      ],
                    ),
                  ),
                ]
              ),
            ]),
      ),
    );

    return pdf;
  }
}
