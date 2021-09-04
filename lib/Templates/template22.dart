
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template22 {
  static final kLeftTitleTextstyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      fontSize: 20,
      color: PdfColors.white,
    letterSpacing: 1
  );
  static final krightTitleTextstyle = pw.TextStyle(
    fontWeight: pw.FontWeight.bold,
    fontSize: 20,
    color: PdfColors.blue900,
  );
  static final kLeftSubTitleTextstyle = pw.TextStyle(
    color: PdfColors.white,
  );
  static final krightSubTitleTextstyle = pw.TextStyle(
    color: PdfColors.grey800,
  );
  static pw.Document generateText22(
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
    final pdf22 = pw.Document();
    pdf22.addPage(
        pw.Page(
            margin: pw.EdgeInsets.all(0.0),
            build: (context) => pw.Row(
              children: [
                //1 part
                pw.Expanded(
                  child: pw.Container(
                    color: PdfColors.blue900,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.fromLTRB(30, 40, 0, 0),
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            pw.Text("$name",
                                style: pw.TextStyle(color: PdfColors.white,
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 40,
                                  letterSpacing: 1
                                )),
                            pw.SizedBox(height: 15),
                            // Profile
                            pw.Text("profile".toUpperCase(),
                                style:kLeftTitleTextstyle ),
                            pw.SizedBox(height: 10),
                            pw.Container(
                              height: 50,
                              child: pw.Text('$about',style: kLeftSubTitleTextstyle),
                            ),
                            pw.SizedBox(height: 5),
                            // Contact
                            pw.Text("contact".toUpperCase(),
                                style:kLeftTitleTextstyle ),
                            pw.SizedBox(height: 10),
                            pw.Text('$email',style: kLeftSubTitleTextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$phone',style: kLeftSubTitleTextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$address',style: kLeftSubTitleTextstyle),
                            pw.SizedBox(height: 15),
                            // Education
                            pw.Text("Education".toUpperCase(),
                                style:kLeftTitleTextstyle ),
                            pw.SizedBox(height: 10),
                            // 1
                            pw.Text("$course",
                                style:kLeftSubTitleTextstyle ),
                            pw.SizedBox(height: 5),
                            pw.Text('$instName, $edLocation1',style: kLeftSubTitleTextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$eddate1',style: kLeftSubTitleTextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$edSummary1',style: kLeftSubTitleTextstyle),
                            pw.SizedBox(height: 10),
                            // 2
                            pw.Text("$course2",
                                style:kLeftSubTitleTextstyle ),
                            pw.SizedBox(height: 5),
                            pw.Text('$instname2, $edLocation2',style: kLeftSubTitleTextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$eddate2',style: kLeftSubTitleTextstyle),
                            pw.SizedBox(height: 5),
                            pw.Text('$edSummary2',style: kLeftSubTitleTextstyle),
                            pw.SizedBox(height: 15),
                            // skills
                            pw.Text("skills".toUpperCase(),
                                style:kLeftTitleTextstyle ),
                            pw.SizedBox(height: 10),
                            pw.Bullet(text: '$skill1',style: kLeftSubTitleTextstyle,bulletColor: PdfColors.white),
                            pw.Bullet(text: '$skill2',style: kLeftSubTitleTextstyle,bulletColor: PdfColors.white),
                            pw.Bullet(text: '$skill3',style: kLeftSubTitleTextstyle,bulletColor: PdfColors.white),
                            pw.SizedBox(height: 15),
                            // Language
                            pw.Text("language".toUpperCase(),
                                style:kLeftTitleTextstyle ),
                            pw.SizedBox(height: 10),
                            pw.Text('$lang1 , $lang2',style: kLeftSubTitleTextstyle),
                          ]
                      ),
                    ),
                  ),
                ),
                // 2 part
                pw.Expanded(
                  child: pw.Container(
                    child: pw.Padding(
                      padding: pw.EdgeInsets.fromLTRB(30, 40, 0, 0),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        children: [
                          // Projects
                          pw.Text("Projects".toUpperCase(),
                              style:krightTitleTextstyle ),
                          pw.SizedBox(height: 10),
                          pw.Text('$projecttitle1'.toUpperCase(),style: krightSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$projectDescription1',style: krightSubTitleTextstyle),
                          // 2
                          pw.SizedBox(height: 10),
                          pw.Text('$projecttitle2'.toUpperCase(),style: krightSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$projectDescription2',style: krightSubTitleTextstyle),
                          pw.SizedBox(height: 15),
                          //Experience
                          pw.Text("Experience".toUpperCase(),
                              style:krightTitleTextstyle ),
                          pw.SizedBox(height: 10),
                          pw.Text('$jobTitle1'.toUpperCase(),style: krightSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compName1 , $compLocation1',style: krightSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compStartDate1 - $compEndDate1',style: krightSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$summary1',style: krightSubTitleTextstyle),
                          pw.SizedBox(height: 10),
                          // 2
                          pw.Text('$jobTitle2'.toUpperCase(),style: krightSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compName2 , $compLocation2',style: krightSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compStartDate2 - $compEndDate2',style: krightSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$summary2',style: krightSubTitleTextstyle),
                        ]
                      ),
                    ),
                  )
                )
              ]

            )
        ));
    return pdf22;
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
