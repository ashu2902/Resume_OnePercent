import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// template 10
class Template10 {
  static final kTitleTextStyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      fontSize: 20,
      letterSpacing: 1,
      color: PdfColors.blue900);
  static final kSubTitleTextStyle = pw.TextStyle(
    fontWeight: pw.FontWeight.bold,
    fontSize: 10,
    letterSpacing: 1,
  );
  static pw.Document generateText10(
    name,
    address,
    phone,
    email,
    about,
    jobTitle1,
    compName1,
    compLocation1,
    compStartDate1,
    compEndDate1,
    summary1,
    jobTitle2,
    compName2,
    compLocation2,
    compStartDate2,
    compEndDate2,
    summary2,
    instName,
    course,
    edLocation1,
    eddate1,
    edSummary1,
    instname2,
    course2,
    edLocation2,
    eddate2,
    edSummary2,
    skill1,
    skill2,
    skill3,
    projecttitle1,
    projectDescription1,
    projecttitle2,
    projectDescription2,
  )  {
    final pdf10 = pw.Document();
    pdf10.addPage(
      pw.Page(
        build: (context) => pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Column(children: [
                pw.Text('$name',
                    style: pw.TextStyle(
                        color: PdfColors.blue900,
                        fontSize: 30,
                        fontWeight: pw.FontWeight.bold)),
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      pw.Text('$address,',
                          style: pw.TextStyle(color: PdfColors.grey900)),
                      pw.Text(' $phone,',
                          style: pw.TextStyle(color: PdfColors.grey900)),
                      pw.Text(' $email',
                          style: pw.TextStyle(color: PdfColors.grey900)),
                    ]),
                pw.SizedBox(height: 10),
                pw.Text('$about'),
                pw.SizedBox(height: 15),
                // workexperience
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.end,
                          crossAxisAlignment: pw.CrossAxisAlignment.end,
                          children: [
                            pw.Text('Work\nExperience',
                                style: kTitleTextStyle,
                                textAlign: pw.TextAlign.right),
                          ]),
                      pw.SizedBox(width: 75),
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('$jobTitle1', style: kSubTitleTextStyle),
                            pw.Text('$compName1-$compLocation1',
                                style: kSubTitleTextStyle),
                            pw.Text('$compStartDate1-$compEndDate1',
                                style: pw.TextStyle(color: PdfColors.grey)),
                            pw.SizedBox(height: 5),
                            pw.Text('$summary1'),
                            pw.SizedBox(height: 10),
                            //company2
                            pw.Text('$jobTitle2', style: kSubTitleTextStyle),
                            pw.Text('$compName2-$compLocation2',
                                style: kSubTitleTextStyle),
                            pw.Text('$compStartDate1-$compEndDate1',
                                style: pw.TextStyle(color: PdfColors.grey)),
                            pw.SizedBox(height: 5),
                            pw.Text('$summary2'),
                            pw.SizedBox(height: 15),
                          ]),
                    ]),
                // Education
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.end,
                          crossAxisAlignment: pw.CrossAxisAlignment.end,
                          children: [
                            pw.Text('  Education',
                                style: kTitleTextStyle,
                                textAlign: pw.TextAlign.right),
                          ]),
                      pw.SizedBox(width: 75),
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('$instName', style: kSubTitleTextStyle),
                            pw.Text('$course - $edLocation1',
                                style: kSubTitleTextStyle),
                            pw.Text('$eddate1',
                                style: pw.TextStyle(color: PdfColors.grey)),
                            pw.SizedBox(height: 5),
                            pw.Text('$edSummary1,'),
                            pw.SizedBox(height: 10),
                            //company2
                            pw.Text('$instname2', style: kSubTitleTextStyle),
                            pw.Text('$course2 - $edLocation2',
                                style: kSubTitleTextStyle),
                            pw.Text('$eddate2',
                                style: pw.TextStyle(color: PdfColors.grey)),
                            pw.SizedBox(height: 5),
                            pw.Text('$edSummary2'),
                            pw.SizedBox(height: 15),
                          ]),
                    ]),
                // Skills
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.end,
                          crossAxisAlignment: pw.CrossAxisAlignment.end,
                          children: [
                            pw.Text('         Skills',
                                style: kTitleTextStyle,
                                textAlign: pw.TextAlign.right),
                          ]),
                      pw.SizedBox(width: 75),
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('$skill1'),
                            pw.Text('$skill2'),
                            pw.Text('$skill3'),
                          ]),
                    ]),
                pw.SizedBox(height: 15),
                // Project
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.end,
                          crossAxisAlignment: pw.CrossAxisAlignment.end,
                          children: [
                            pw.Text('     Projects',
                                style: kTitleTextStyle,
                                textAlign: pw.TextAlign.right),
                          ]),
                      pw.SizedBox(width: 75),
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('$projecttitle1',
                                style: kSubTitleTextStyle),
                            pw.Text('$projectDescription1'),
                            pw.SizedBox(height: 5),
                            pw.Text('$projecttitle2',
                                style: kSubTitleTextStyle),
                            pw.Text('$projectDescription2'),
                          ]),
                    ]),
              ]),
            ]),
      ),
    );
    return pdf10;
  }

}
