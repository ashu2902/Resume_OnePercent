
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template1 {
  static pw.Document generateText1(
    name,
    address,
    phone,
    email,
    about,
    jobTitle1,
    organization1,
    startdate1,
    enddate1,
    jobTitle2,
    organization2,
    startdate2,
    enddate2,
    skills,
    instName1,
    course1,
    edDate1,
    experienceAbout1,
    instName2,
    course2,
    edDate2,
    experienceAbout2,
    projTitle1,
    projectDesc1,
    projTitle2,
    projectDesc2,
  ) {
    final pdf2 = pw.Document();
    pdf2.addPage(
        pw.Page(
          build: (context) => pw.Column(children: [
            //Name
            pw.Container(
                alignment: pw.Alignment.centerLeft,
                child: pw.Text(name, style: pw.TextStyle(fontSize: 20))),
            pw.Divider(color: PdfColors.blue),
            //Address, Phone , Email
            pw.Container(
                child: pw.Row(children: [
              pw.Container(child: pw.Text(address)),
              pw.Container(height: 10, child: pw.VerticalDivider(width: 20)),
              pw.Container(child: pw.Text(phone)),
              pw.Container(height: 10, child: pw.VerticalDivider(width: 20)),
              pw.Container(child: pw.Text(email)),
            ])),
            pw.SizedBox(height: 30),
            //About
            pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Container(
                      alignment: pw.Alignment.topLeft,
                      child:
                          pw.Text('About', style: pw.TextStyle(fontSize: 18))),
                  pw.Container(width: 30, child: pw.Divider())
                ]),

            pw.Container(child: pw.Text(about)),
            pw.SizedBox(height: 30),

            //Experience and Education
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  //Experience,Skills
                  pw.Expanded(
                      child: pw.Container(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Experience',
                                    style: pw.TextStyle(fontSize: 18)),
                                pw.Container(width: 30, child: pw.Divider()),
                                pw.Container(
                                    child: pw.Text('$jobTitle1, $organization1',
                                        style: pw.TextStyle(
                                            fontSize: 16,
                                            color: PdfColors.blue300))),
                                //Date
                                pw.Text('Date- $startdate1 to $enddate1'),
                                //Achievement or Responsibility
                                pw.Container(
                                    height: 51,
                                    child: pw.Bullet(text: experienceAbout1)),
                                pw.SizedBox(height: 30),

                                pw.Text('$jobTitle2, $organization2',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                //Date
                                pw.Text('Date- $startdate2 to $enddate2'),
                                //Achievement or Responsibility
                                pw.Container(
                                    height: 51,
                                    child: pw.Bullet(text: experienceAbout2)),
                                pw.SizedBox(height: 30),

                                //SKILLS
                                pw.Text('Skills',
                                    style: pw.TextStyle(fontSize: 18)),
                                pw.Container(width: 30, child: pw.Divider()),
                                pw.Text(skills),
                              ]))),
                  //Education, Projects,
                  pw.Expanded(
                      child: pw.Container(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Education',
                                    style: pw.TextStyle(fontSize: 18)),
                                pw.Container(width: 30, child: pw.Divider()),
                                pw.Text(instName1,
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                pw.Text(course1),
                                pw.SizedBox(height: 10),

                                pw.Text('Date- $edDate1'),
                                pw.SizedBox(height: 15),
                                pw.Text(instName2,
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                pw.Text(course2),
                                pw.Text('Date- $edDate2'),
                                pw.SizedBox(height: 30),

                                //Projects&Volunteer
                                pw.Text('Projects & Volunteer',
                                    style: pw.TextStyle(fontSize: 18)),
                                pw.Container(width: 30, child: pw.Divider()),
                                pw.SizedBox(height: 20),

                                pw.Text('$projTitle1',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),

                                //Achievement or Responsibility
                                pw.Bullet(text: '$projectDesc1'),
                                pw.SizedBox(height: 20),
                                pw.Text('$projTitle2',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),

                                //Achievement or Responsibility
                                pw.Bullet(text: '$projectDesc2'),
                              ])))
                ]),
          ]),
        ),
        index: 0);
    return pdf2;
  }
}
