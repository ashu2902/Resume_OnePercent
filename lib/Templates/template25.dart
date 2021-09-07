import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template25 {
  static final kTitlelefttextstyle = pw.TextStyle(
    color: PdfColors.black,
    letterSpacing: 1,
    fontWeight: pw.FontWeight.bold,
    fontSize: 15
  );
  static final kTitlerighttextstyle = pw.TextStyle(
    color: PdfColors.white,
    letterSpacing: 1,
    fontWeight: pw.FontWeight.bold,
      fontSize: 15
  );
  static final kleftSubtextstyle = pw.TextStyle(
    color: PdfColors.grey700,
  );
  static final krightSubtextstyle = pw.TextStyle(
    color: PdfColors.white,
  );
  static pw.Document generateText25(
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
    final pdf25 = pw.Document();
    pdf25.addPage(
        pw.Page(
            margin: pw.EdgeInsets.all(0.0),
            build: (context) => pw.Row(
              children: [
                pw.Expanded(
                  flex: 2,
                  child: pw.Container(
                    child: pw.Padding(
                        padding: pw.EdgeInsets.fromLTRB(30, 30, 30, 30),
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                          pw.Text('$name'.toUpperCase(),style: pw.TextStyle(
                            color: PdfColors.blue800,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 30
                          )),
                            pw.SizedBox(height: 5),
                            pw.Text('$jobTitle1',style: pw.TextStyle(
                              color: PdfColors.grey700,
                              fontSize: 15,

                            )),
                            pw.SizedBox(height: 10),
                            pw.Divider(thickness: 1,color: PdfColors.blue700),
                            pw.SizedBox(height: 10),
                            // email ,address , phone
                            pw.Text('Email: $email',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('Phone: $phone',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('Address: $address'),
                            pw.SizedBox(height: 10),
                            pw.Divider(thickness: 1,color: PdfColors.blue700),
                            pw.SizedBox(height: 10),
                            // Education
                            pw.SizedBox(height: 5),
                            pw.Text('education'.toUpperCase(),style: kTitlelefttextstyle),
                            pw.SizedBox(height: 10),
                            pw.Text('$course',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$instName',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$edLocation1, $eddate1',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$edSummary1',style: kleftSubtextstyle),
                            pw.SizedBox(height: 10),
                            // 2
                            pw.Text('$course2',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$instname2',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$edLocation2, $eddate2',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$edSummary2',style: kleftSubtextstyle),
                            pw.SizedBox(height: 10),
                            pw.Divider(thickness: 1,color: PdfColors.blue700),
                            // Projects
                            pw.SizedBox(height: 5),
                            pw.Text('project'.toUpperCase(),style: kTitlelefttextstyle),
                            pw.SizedBox(height: 10),
                            pw.Text('$projecttitle1',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$projectDescription1',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$projecttitle2',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$projectDescription2',style: kleftSubtextstyle),
                            pw.SizedBox(height: 10),
                            pw.Divider(thickness: 1,color: PdfColors.blue700),
                            // Experience
                            pw.SizedBox(height: 5),
                            pw.Text('experience'.toUpperCase(),style: kTitlelefttextstyle),
                            pw.SizedBox(height: 10),
                            pw.Text('$jobTitle1',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$compName1',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$compLocation1, $compStartDate1-$compEndDate1',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$summary1',style: kleftSubtextstyle),
                            pw.SizedBox(height: 10),
                            pw.Text('$jobTitle2',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$compName2',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$compLocation2, $compStartDate2-$compEndDate2',style: kleftSubtextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$summary2',style: kleftSubtextstyle),
                        ]
                      ),
                    )
                  )
                ),
                // 2 part
                pw.Expanded(
                  flex: 1,
                  child: pw.Container(
                    color: PdfColors.blue700,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                        pw.Text('About me'.toUpperCase(),style: kTitlerighttextstyle),
                            pw.SizedBox(height: 10),
                            pw.Text('$about',style: krightSubtextstyle),
                            pw.SizedBox(height: 10),
                            pw.Divider(thickness: 1,color: PdfColors.white),
                            // skills
                            pw.Text('skills'
                                .toUpperCase(),style: kTitlerighttextstyle),
                            pw.SizedBox(height: 10),
                            pw.Bullet(text: '$skill1',style: krightSubtextstyle),
                            pw.Bullet(text: '$skill2',style: krightSubtextstyle),
                            pw.Bullet(text: '$skill3',style: krightSubtextstyle),
                            pw.SizedBox(height: 10),
                            pw.Divider(thickness: 1,color: PdfColors.white),
                            // Language
                            pw.Text('Languages'.toUpperCase(),style: kTitlerighttextstyle),
                            pw.SizedBox(height: 10),
                            pw.Text('$lang1, $lang2',style: krightSubtextstyle),
                          ]
                      ),
                    ),
                  )
                )
              ]
            )
        ));
    return pdf25;
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
