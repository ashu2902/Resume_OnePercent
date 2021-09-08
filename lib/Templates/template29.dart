import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template29 {
  static final kTitleTextstyle = pw.TextStyle(
    fontWeight: pw.FontWeight.bold,
    fontSize: 15,
    color: PdfColors.green900,);
  static final kSubTitleTextstyle = pw.TextStyle(
    color: PdfColors.grey700,
  );

  static pw.Document generateText29(
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
    final pdf29 = pw.Document();
    pdf29.addPage(
        pw.Page(
            build: (context) =>pw.Row(
                children: [
                  // 1 part
                  pw.Expanded(
                    flex: 1,
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text('About me'.toUpperCase(),
                            style:kTitleTextstyle ),
                        pw.SizedBox(height: 15),
                        pw.Text('$about',style: kSubTitleTextstyle),
                        pw.SizedBox(height: 15),
                        // skills
                        pw.Text('skills'.toUpperCase(),
                            style:kTitleTextstyle ),
                        pw.SizedBox(height: 15),
                        pw.Bullet(text: '$skill1',style: kSubTitleTextstyle),
                        pw.Bullet(text: '$skill2',style: kSubTitleTextstyle),
                        pw.Bullet(text: '$skill3',style: kSubTitleTextstyle),
                        pw.SizedBox(height: 15),
                        // Language
                        pw.Text('Language'.toUpperCase(),
                            style:kTitleTextstyle ),
                        pw.SizedBox(height: 15),
                        pw.Text('$lang1',style: kSubTitleTextstyle),
                        pw.SizedBox(height: 5),
                        pw.Text('$lang2',style: kSubTitleTextstyle),
                      ],
                    ),
                  ),
                  pw.SizedBox(width: 10
                  ),
                  // 2 part
                  pw.Expanded(
                      flex: 2,
                      child: pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('$name',style: pw.TextStyle(
                              color: PdfColors.green900,
                              fontSize: 30,
                              fontWeight: pw.FontWeight.normal
                          )),
                          pw.SizedBox(height: 10),
                          pw.Text('$email',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$phone',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$address',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 15),
                          //Education
                          pw.Text('Education'.toUpperCase(),
                              style:kTitleTextstyle ),
                          pw.SizedBox(height: 10),
                          pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Text('$course',style: kSubTitleTextstyle),
                                pw.Text('$eddate1',style: kSubTitleTextstyle),
                              ]),
                          pw.SizedBox(height: 5),
                          pw.Text('$instName',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$edLocation1',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$edSummary1',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 10),
                          // 2 part
                          pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Text('$course2',style: kSubTitleTextstyle),
                                pw.Text('$eddate2',style: kSubTitleTextstyle),
                              ]),
                          pw.SizedBox(height: 5),
                          pw.Text('$instname2',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$edLocation2',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$edSummary2',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 15),
                          // Projects
                          pw.Text('Projects'.toUpperCase(),
                              style:kTitleTextstyle ),
                          pw.SizedBox(height: 10),
                          pw.Text('$projecttitle1',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$projectDescription1',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 10),
                          pw.Text('$projecttitle2',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$projectDescription2',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 15),
                          // Experience
                          pw.Text('Experience'.toUpperCase(),
                              style:kTitleTextstyle ),
                          pw.SizedBox(height: 10),
                          //1
                          pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Text('$jobTitle1',style: kSubTitleTextstyle),
                                pw.Text('$compStartDate1-$compEndDate1',style: kSubTitleTextstyle),
                              ]),
                          pw.SizedBox(height: 5),
                          pw.Text('$compName1',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compLocation1',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$summary1',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 10),
                          // 2
                          pw.Row(
                              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                              children: [
                                pw.Text('$jobTitle2',style: kSubTitleTextstyle),
                                pw.Text('$compStartDate2-$compEndDate2',style: kSubTitleTextstyle),
                              ]),
                          pw.SizedBox(height: 5),
                          pw.Text('$compName2',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compLocation2',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$summary2',style: kSubTitleTextstyle),
                          pw.SizedBox(height: 10),
                        ],

                      )
                  )
                ]

            )
        ));
    return pdf29;
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
