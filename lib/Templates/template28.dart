import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template28 {
  static final kBlueTitleTextStyle = pw.TextStyle(
    color: PdfColors.blue400,
    fontSize: 20,
  );
  static final kSubtextstyle = pw.TextStyle(
    color: PdfColors.grey700
  );
  static pw.Document generateText28(
      name,
      address,
      phone,
      email,
      about,
      skill1,
      skill2,
      skill3,
      jobTitle1,
      compStartDate1,
      compEndDate1,
      compName1,
      compLocation1,
      summary1,
      jobTitle2,
      compStartDate2,
      compEndDate2,
      compName2,
      compLocation2,
      summary2,
      instName,
      course,
      eddate1,
      edSummary1,
      edLocation1,
      instname2,
      course2,
      eddate2,
      edSummary2,
      edLocation2,
      projecttitle1,
      projectDescription1,
      projecttitle2,
      projectDescription2,
      lang1,
      lang2
      ){
    final pdf28 = pw.Document();
    pdf28.addPage(
        pw.Page(
            margin: pw.EdgeInsets.all(0.0),
            build: (context) =>
                pw.Column(
                  children: [
                    pw.Expanded(
                      flex: 1,
                      child: pw.Container(
                        color: PdfColors.blue400,
                          child: pw.Padding(
                            padding: pw.EdgeInsets.fromLTRB(30, 30, 30, 30),
                          child: pw.Row(
                            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                            children: [
                              pw.Column(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                children: [
                                  pw.Text('$name'.toUpperCase(),style: pw.TextStyle(
                                    color: PdfColors.white,
                                    fontWeight:pw.FontWeight.normal,
                                    fontSize: 30
                                  )),
                                  pw.SizedBox(height: 5),
                                  pw.Text('jobTitle',style: pw.TextStyle(
                                    color: PdfColors.white,
                                    fontSize: 20
                                  ))
                                ]
                              ),
                              pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                children: [
                                  pw.Text('email',style:pw.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 15
                                  ) ),
                                  pw.Text('phone',style:pw.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 15
                                  ) ),
                                  pw.Text('address',style:pw.TextStyle(
                                      color: PdfColors.white,
                                      fontSize: 15
                                  ) ),
                                ]
                              )
                            ]
                          )
                        )
                      )
                    ),
                    pw.Expanded(
                      flex: 5,
                        child: pw.Container(
                            child: pw.Padding(
                                padding: pw.EdgeInsets.fromLTRB(30, 30, 30, 30),
                                child: pw.Column(
                                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                                    mainAxisAlignment: pw.MainAxisAlignment.start,
                                  children: [
                                    pw.Row(
                                        children: [
                                      pw.Text('about me'.toUpperCase(),style: kBlueTitleTextStyle),
                                      pw.SizedBox(width: 90),
                                          pw.Text('about',style: kSubtextstyle)
                                    ]),
                                    pw.SizedBox(height: 10),
                                    pw.Divider(
                                      thickness: 1,color: PdfColors.blue400
                                    ),
                                    pw.SizedBox(height: 5),
                                    //skill
                                    pw.Row(
                                        children: [
                                          pw.Text('skills'.toUpperCase(),style: kBlueTitleTextStyle),
                                          pw.SizedBox(width: 130),
                                          pw.Text('skill1, skill2, skill3',style: kSubtextstyle)
                                        ]),
                                    pw.SizedBox(height: 10),
                                    pw.Divider(
                                        thickness: 1,color: PdfColors.blue400
                                    ),
                                    pw.SizedBox(height: 5),
                                    // Education
                                    pw.Text('education'.toUpperCase(),style: kBlueTitleTextStyle),
                                    pw.SizedBox(height: 10),
                                    // 1
                                    pw.Row(
                                        children: [
                                          pw.Text('eddate1'),
                                          pw.SizedBox(width: 160),
                                          pw.Text('course',style: kSubtextstyle)
                                        ]),
                                    pw.Row(
                                        children: [
                                          pw.Text('edLocation1',style: kSubtextstyle),
                                          pw.SizedBox(width: 140),
                                          pw.Column(
                                            mainAxisAlignment: pw.MainAxisAlignment.start,
                                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.SizedBox(height: 10),
                                              pw.Text('instName',style: kSubtextstyle),
                                              pw.Text('edSummary1',style: kSubtextstyle),
                                            ]
                                          )
                                        ]),
                                    pw.SizedBox(height: 10),
                                    // 2
                                    pw.Row(
                                        children: [
                                          pw.Text('eddate2'),
                                          pw.SizedBox(width: 160),
                                          pw.Text('course2',style: kSubtextstyle)
                                        ]),
                                    pw.Row(
                                        children: [
                                          pw.Text('edLocation2',style: kSubtextstyle),
                                          pw.SizedBox(width: 140),
                                          pw.Column(

                                              mainAxisAlignment: pw.MainAxisAlignment.start,
                                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.SizedBox(height: 10),
                                                pw.Text('instname2',style: kSubtextstyle),
                                                pw.Text('edSummary2',style: kSubtextstyle),
                                              ]
                                          )
                                        ]),
                                    pw.SizedBox(height: 10),
                                    pw.Divider(
                                        thickness: 1,color: PdfColors.blue400
                                    ),
                                    pw.SizedBox(height: 5),
                                    //Projects
                                    pw.Text('Projects'.toUpperCase(),style: kBlueTitleTextStyle),
                                    pw.SizedBox(height: 10),

                                    // 1
                                    pw.Row(
                                        children: [
                                          pw.Text('projecttitle1',style: kSubtextstyle),
                                          pw.SizedBox(width: 140),
                                          pw.Text('projectDescription1',style: kSubtextstyle)
                                        ]),
                                    pw.SizedBox(height: 5),
                                    pw.Row(
                                        children: [
                                          pw.Text('projecttitle2',style: kSubtextstyle),
                                          pw.SizedBox(width: 140),
                                          pw.Text('projectDescription2',style: kSubtextstyle)
                                        ]),
                                    // Experience
                                    pw.SizedBox(height: 10),
                                    pw.Divider(
                                        thickness: 1,color: PdfColors.blue400
                                    ),
                                    pw.SizedBox(height: 5),
                                    pw.Text('experience'.toUpperCase(),style: kBlueTitleTextStyle),
                                    pw.SizedBox(height: 10),
                                    pw.Row(
                                        children: [
                                          pw.Text('compStartDate1-compEndDate1'),
                                          pw.SizedBox(width: 40),
                                          pw.Text('jobTitle1',style: kSubtextstyle)
                                        ]),
                                    pw.Row(
                                        children: [
                                          pw.Text('compLocation1',style: kSubtextstyle),
                                          pw.SizedBox(width: 130),
                                          pw.Column(
                                              mainAxisAlignment: pw.MainAxisAlignment.start,
                                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.SizedBox(height: 10),
                                                pw.Text('compName1',style: kSubtextstyle),
                                                pw.Text('summary1',style: kSubtextstyle),
                                              ]
                                          )
                                        ]),
                                    pw.SizedBox(height: 10),
                                    //2
                                    pw.Row(
                                        children: [
                                          pw.Text('compStartDate2-compEndDate2'),
                                          pw.SizedBox(width: 40),
                                          pw.Text('jobTitle2',style: kSubtextstyle)
                                        ]),
                                    pw.Row(
                                        children: [
                                          pw.Text('compLocation2',style: kSubtextstyle),
                                          pw.SizedBox(width: 130),
                                          pw.Column(
                                              mainAxisAlignment: pw.MainAxisAlignment.start,
                                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                                              children: [
                                                pw.SizedBox(height: 10),
                                                pw.Text('compName2',style: kSubtextstyle),
                                                pw.Text('summary2',style: kSubtextstyle),
                                              ]
                                          )
                                        ]),
                                    pw.SizedBox(height: 10),
                                    pw.Divider(
                                        thickness: 1,color: PdfColors.blue400
                                    ),
                                    // Languages
                                    pw.SizedBox(height: 5),
                                    pw.Row(
                                        children: [
                                          pw.Text('languages'.toUpperCase(),style: kBlueTitleTextStyle),
                                          pw.SizedBox(width: 80),
                                          pw.Text('lang1, lang2',style: kSubtextstyle)
                                        ]),

                                  ]
                                )
                            )
                        )
                    )
                  ]


            )
        ));
    return pdf28;
  }


  static Future<File> saveDocument(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }
}
