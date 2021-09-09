
import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
class Template40 {
  static final kTitleTextStyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      fontSize: 20,
      letterSpacing: 1,
      color: PdfColors.blueAccent700);
  static final kSubTitleTextStyle = pw.TextStyle(
    fontWeight: pw.FontWeight.bold,
    fontSize: 10,
    letterSpacing: 1,
  );
  static pw.Document generateText(
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
      lang1,
      lang2,
      )  {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
             /* pw.Container(
                decoration: pw.BoxDecoration(
                    color: PdfColors.blueAccent700,
                    borderRadius: pw.BorderRadius.all(pw.Radius.circular(10.0))),),*/
              pw.Column(children: [
                pw.Row(children: [
                  pw.SizedBox(width: 100),
                  pw.Container(
                    decoration: pw.BoxDecoration(
                        color: PdfColors.blueAccent700,
                        borderRadius: pw.BorderRadius.all(pw.Radius.circular(50.0))),),
                  pw.SizedBox(width: 100),
                  pw.Text('$name',
                    style: pw.TextStyle(
                        color: PdfColors.blueAccent700,
                        fontSize: 30,
                        fontWeight: pw.FontWeight.bold)),]),

                pw.Row(

                    children: [
                      pw.Container(
                        margin: pw.EdgeInsets.only(left: 200.0),
                        child:pw.Text('$address,',
                          style: pw.TextStyle(color: PdfColors.grey900)),),
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
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('Work\nExperience',
                                style: kTitleTextStyle,
                                textAlign: pw.TextAlign.right),
                            pw.SizedBox(width: 55),
                            pw.Container(
                              margin: pw.EdgeInsets.only(top: 10),
                              decoration: pw.BoxDecoration(
                                  color: PdfColors.blueAccent700,
                                  borderRadius: pw.BorderRadius.all(pw.Radius.circular(10.0))),),
                          ]),
                      pw.SizedBox(width: 20),
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
                            pw.SizedBox(width: 55),
                            pw.Container(
                              margin: pw.EdgeInsets.only(bottom: 13),
                              decoration: pw.BoxDecoration(
                                  color: PdfColors.blueAccent700,
                                  borderRadius: pw.BorderRadius.all(pw.Radius.circular(10.0))),),
                          ]),
                      pw.SizedBox(width: 20),
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
                            pw.SizedBox(width: 55),
                            pw.Container(
                              margin: pw.EdgeInsets.only(bottom: 15),
                              decoration: pw.BoxDecoration(
                                  color: PdfColors.blueAccent700,
                                  borderRadius: pw.BorderRadius.all(pw.Radius.circular(10.0))),),
                          ]),
                      pw.SizedBox(width: 20),
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
                            pw.SizedBox(width: 55),
                            pw.Container(
                              margin: pw.EdgeInsets.only(bottom: 15),
                              decoration: pw.BoxDecoration(
                                  color: PdfColors.blueAccent700,
                                  borderRadius: pw.BorderRadius.all(pw.Radius.circular(10.0))),),
                          ]),
                      pw.SizedBox(width: 20),
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
                pw.SizedBox(height: 15),
                // languages
                pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.end,
                          crossAxisAlignment: pw.CrossAxisAlignment.end,
                          children: [
                            pw.Text(' Languages',
                                style: kTitleTextStyle,
                                textAlign: pw.TextAlign.right),
                            pw.SizedBox(width: 55),
                            pw.Container(
                              margin: pw.EdgeInsets.only(bottom: 15),
                              decoration: pw.BoxDecoration(
                                  color: PdfColors.blueAccent700,
                                  borderRadius: pw.BorderRadius.all(pw.Radius.circular(10.0))),),
                          ]),
                      pw.SizedBox(width: 20),
                      pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('$lang1',
                                style: kSubTitleTextStyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$lang2',
                                style: kSubTitleTextStyle),
                          ]),
                    ]),
              ]),
            ]),
      ),
    );
    return pdf;
  }

}
