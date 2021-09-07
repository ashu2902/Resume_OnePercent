import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template26 {
  static final kGreySubtextstyle = pw.TextStyle(
      color: PdfColors.grey700,
  );
  static final kBlackSubtextstyle = pw.TextStyle(
    color: PdfColors.black,
  );
  static final kTitleTextstyle = pw.TextStyle(
    color: PdfColors.black,
    fontSize: 20
  );
  static pw.Document generateText26(
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
      ) {
    final pdf26 = pw.Document();
    pdf26.addPage(pw.Page(build: (context) =>
        pw.Column(
        children: [
      // 1part
      pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          mainAxisAlignment: pw.MainAxisAlignment.start,
        children: [
          pw.Text('$name',style: pw.TextStyle(
            fontSize: 35,
            letterSpacing: 1,
            fontWeight: pw.FontWeight.normal
          )),
          pw.SizedBox(height: 10),
          pw.Text('$jobTitle1',style: pw.TextStyle(
            fontSize: 20,
            color: PdfColors.grey700,
          )),
          pw.SizedBox(height:10 ),
          pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
            children: [
              pw.Text('$email',style: kGreySubtextstyle),
              pw.Text('$phone',style: kGreySubtextstyle),
              pw.Text('$address',style: kGreySubtextstyle),
            ]
          ),
          pw.SizedBox(height:30 ),
          pw.Row(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
            // 2 part
            pw.Expanded(
              flex: 2,
              child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  children: [
                //Education
                pw.Text('Education'.toUpperCase(),style: kTitleTextstyle),
                pw.Divider(thickness: 1),
                pw.SizedBox(height:5 ),
                pw.Text('$course',style: kGreySubtextstyle),
                pw.SizedBox(height: 5),
                    pw.Text('$instName',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$edLocation1',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$eddate1',style: kBlackSubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$edSummary1',style: kGreySubtextstyle),
                    // 2
                    pw.SizedBox(height:10 ),
                    pw.Text('$course2',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$instname2',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$edLocation2',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$eddate2',style: kBlackSubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$edSummary2',style: kGreySubtextstyle),
                    pw.SizedBox(height: 15),
                    // Experience
                    pw.Text('Experience'.toUpperCase(),style: kTitleTextstyle),
                    pw.Divider(thickness: 1),
                    pw.SizedBox(height:5 ),
                    pw.Text('$jobTitle1',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$compName1',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$compLocation1',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$compStartDate1-$compEndDate1',style: kBlackSubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$summary1',style: kGreySubtextstyle),
                    // 2
                    pw.SizedBox(height: 10),
                    pw.Text('$jobTitle2',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$compName2',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$compLocation2',style: kGreySubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$compStartDate2-$compEndDate2',style: kBlackSubtextstyle),
                    pw.SizedBox(height: 5),
                    pw.Text('$summary2',style: kGreySubtextstyle),
              ]),
            ),
            pw.SizedBox(width: 20),
            // 3 part
            pw.Expanded(
              flex: 1,
              child :pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  // about
                  pw.Text('about me'.toUpperCase(),style: kTitleTextstyle),
                  pw.Divider(thickness: 1),
                  pw.SizedBox(height:5 ),
                  pw.Text('$about',style: kGreySubtextstyle),
                  pw.SizedBox(height: 10),
                  // project
                  pw.Text('projects'.toUpperCase(),style: kTitleTextstyle),
                  pw.Divider(thickness: 1),
                  pw.SizedBox(height:5 ),
                  pw.Text('$projecttitle1',style: kGreySubtextstyle),
                  pw.SizedBox(height: 5),
                  pw.Text('$projectDescription1',style: kGreySubtextstyle),
                  pw.SizedBox(height: 10),
                  pw.Text('$projecttitle2',style: kGreySubtextstyle),
                  pw.SizedBox(height: 5),
                  pw.Text('$projectDescription2',style: kGreySubtextstyle),
                  pw.SizedBox(height: 10),
                  //skills
                  pw.Text('skills'.toUpperCase(),style: kTitleTextstyle),
                  pw.Divider(thickness: 1),
                  pw.Bullet(text: '$skill1',style: kGreySubtextstyle),
                  pw.Bullet(text: '$skill2',style: kGreySubtextstyle),
                  pw.Bullet(text: '$skill3',style: kGreySubtextstyle),
                  pw.SizedBox(height: 10),
                  //Languages
                  pw.Text('languages'.toUpperCase(),style: kTitleTextstyle),
                  pw.Divider(thickness: 1),
                  pw.Text('$lang1, $lang2',style: kGreySubtextstyle),
                ]
              )
            ),
          ])
        ]
      )
    ])));
    return pdf26;
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
