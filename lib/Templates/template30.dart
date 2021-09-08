import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template30 {
  static final kTitleTextStyle = pw.TextStyle(
    color: PdfColors.green900,
    fontSize: 15,
    decoration: pw.TextDecoration.underline,
    decorationThickness: 2,
    fontWeight: pw.FontWeight.bold
  );
  static final kSubtextstyle = pw.TextStyle(
      color: PdfColors.grey700
  );
  static pw.Document generateText30(
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
    final pdf30 = pw.Document();
    pdf30.addPage(
        pw.Page(
            build: (context) => pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                pw.Text('$name',style: pw.TextStyle(
                  color: PdfColors.green900,
                  fontSize: 30,
                  fontWeight: pw.FontWeight.bold
                )),
                pw.SizedBox(height: 5),
                pw.Text('$jobTitle1',style: pw.TextStyle(
                  fontSize: 15,
                  color: PdfColors.grey700
                )),
                pw.SizedBox(height:10),
                pw.Row(
                    children: [
                      pw.Text('Email',style: pw.TextStyle(
                          fontSize: 10,
                          color: PdfColors.black
                      )),
                      pw.SizedBox(width: 175),
                      pw.Text('$email',style: kSubtextstyle)
                    ]),
                pw.SizedBox(height:5),
                pw.Row(
                    children: [
                      pw.Text('Phone',style: pw.TextStyle(
                          fontSize: 10,
                          color: PdfColors.black
                      )),
                      pw.SizedBox(width: 170),
                      pw.Text('$phone',style: kSubtextstyle)
                    ]),
                pw.SizedBox(height:5),
                pw.Row(
                    children: [
                      pw.Text('Location',style: pw.TextStyle(
                          fontSize: 10,
                          color: PdfColors.black
                      )),
                      pw.SizedBox(width: 162),
                      pw.Text('$address',style: kSubtextstyle)
                    ]),
                pw.SizedBox(height:15),
                // 2 part
                pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Row(
                          children: [
                            pw.Text('about me'.toUpperCase(),style: kTitleTextStyle),
                            pw.SizedBox(width: 120),
                            pw.Text('$about',style: kSubtextstyle)
                          ]),
                      pw.SizedBox(height: 10),

                      // Education
                      pw.Text('education'.toUpperCase(),style: kTitleTextStyle),
                      pw.SizedBox(height: 15),
                      // 1
                      pw.Row(
                          children: [
                            pw.Text('$eddate1'),
                            pw.SizedBox(width: 160),
                            pw.Text('$course',style: kSubtextstyle)
                          ]),
                      pw.Row(
                          children: [
                            pw.Text('$edLocation1',style: kSubtextstyle),
                            pw.SizedBox(width: 140),
                            pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.SizedBox(height: 10),
                                  pw.Text('$instName',style: kSubtextstyle),
                                  pw.Text('$edSummary1',style: kSubtextstyle),
                                ]
                            )
                          ]),
                      pw.SizedBox(height: 10),
                      // 2
                      pw.Row(
                          children: [
                            pw.Text('$eddate2'),
                            pw.SizedBox(width: 160),
                            pw.Text('$course2',style: kSubtextstyle)
                          ]),
                      pw.Row(
                          children: [
                            pw.Text('$edLocation2',style: kSubtextstyle),
                            pw.SizedBox(width: 140),
                            pw.Column(

                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.SizedBox(height: 10),
                                  pw.Text('$instname2',style: kSubtextstyle),
                                  pw.Text('$edSummary2',style: kSubtextstyle),
                                ]
                            )
                          ]),
                      pw.SizedBox(height: 10),

                      //Projects
                      pw.Text('Projects'.toUpperCase(),style: kTitleTextStyle),
                      pw.SizedBox(height: 10),

                      // 1
                      pw.Row(
                          children: [
                            pw.Text('$projecttitle1',style: kSubtextstyle),
                            pw.SizedBox(width: 145),
                            pw.Text('$projectDescription1',style: kSubtextstyle)
                          ]),
                      pw.SizedBox(height: 5),
                      pw.Row(
                          children: [
                            pw.Text('$projecttitle2',style: kSubtextstyle),
                            pw.SizedBox(width: 145),
                            pw.Text('$projectDescription2',style: kSubtextstyle)
                          ]),
                      // Experience
                      pw.SizedBox(height: 10),

                      pw.Text('experience'.toUpperCase(),style: kTitleTextStyle),
                      pw.SizedBox(height: 10),
                      pw.Row(
                          children: [
                            pw.Text('$compStartDate1-$compEndDate1'),
                            pw.SizedBox(width: 35),
                            pw.Text('$jobTitle1',style: kSubtextstyle)
                          ]),
                      pw.Row(
                          children: [
                            pw.Text('$compLocation1',style: kSubtextstyle),
                            pw.SizedBox(width: 130),
                            pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.SizedBox(height: 10),
                                  pw.Text('$compName1',style: kSubtextstyle),
                                  pw.Text('$summary1',style: kSubtextstyle),
                                ]
                            )
                          ]),
                      pw.SizedBox(height: 10),
                      //2
                      pw.Row(
                          children: [
                            pw.Text('$compStartDate2-$compEndDate2'),
                            pw.SizedBox(width: 35),
                            pw.Text('$jobTitle2',style: kSubtextstyle)
                          ]),
                      pw.Row(
                          children: [
                            pw.Text('$compLocation2',style: kSubtextstyle),
                            pw.SizedBox(width: 130),
                            pw.Column(
                                mainAxisAlignment: pw.MainAxisAlignment.start,
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.SizedBox(height: 10),
                                  pw.Text('$compName2',style: kSubtextstyle),
                                  pw.Text('$summary2',style: kSubtextstyle),
                                ]
                            )
                          ]),
                      pw.SizedBox(height: 10),
                      //skill
                      pw.Row(
                          children: [
                            pw.Text('skills'.toUpperCase(),style: kTitleTextStyle),
                            pw.SizedBox(width: 158),
                            pw.Text('$skill1, $skill2, $skill3',style: kSubtextstyle)
                          ]),
                      pw.SizedBox(height: 15),

                      // Languages
                      pw.Row(
                          children: [
                            pw.Text('languages'.toUpperCase(),style: kTitleTextStyle),
                            pw.SizedBox(width: 116),
                            pw.Text('$lang1, $lang2',style: kSubtextstyle)
                          ]),

                    ]
                )
              ]

            )
        ));
    return pdf30;
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
