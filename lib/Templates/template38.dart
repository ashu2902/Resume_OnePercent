import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template38 {
  static final kGreySubtextstyle = pw.TextStyle(
    color: PdfColors.grey700,
  );
  static final kTitleTextstyle = pw.TextStyle(
      color: PdfColors.black,
      fontSize: 20,
      fontWeight: pw.FontWeight.bold
  );
  static pw.Document generateText(
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
    final pdf27 = pw.Document();
    pdf27.addPage(
        pw.Page(
            build: (context) =>
                pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Text('$name',style: pw.TextStyle(
                          fontSize: 30,
                          color: PdfColors.black,
                          fontWeight: pw.FontWeight.bold
                      )),
                      pw.SizedBox(height: 10 ),
                      pw.Row(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          children: [
                            pw.Text('$email',style: pw.TextStyle(
                                fontSize: 15,
                                color: PdfColors.grey600)),
                            pw.SizedBox(width: 10),
                            pw.Container(height: 10,child: pw.Divider(),),
                            pw.SizedBox(width: 10),
                            pw.Text('$phone',style: pw.TextStyle(
                                fontSize: 15,
                                color: PdfColors.grey600)),
                            pw.SizedBox(width: 10),
                            pw.Container(height: 10,child: pw.Divider(),),
                            pw.SizedBox(width: 10),
                            pw.Text('$address',style: pw.TextStyle(
                                fontSize: 15,
                                color: PdfColors.grey600)),
                          ]),
                      pw.SizedBox(height:10),
                      //about me
                      pw.Text('About Me',style: kTitleTextstyle),
                      pw.Divider(thickness: 1,color: PdfColors.grey),
                      pw.SizedBox(height: 5),
                      pw.Text('$about',style: kGreySubtextstyle),
                      pw.SizedBox(height: 10),
                      // skills
                      pw.Text('Skills',style: kTitleTextstyle),
                      pw.Divider(thickness: 1,color: PdfColors.grey),
                      pw.Bullet(text:'$skill1',style: kGreySubtextstyle),
                      pw.Bullet(text:'$skill2',style: kGreySubtextstyle),
                      pw.Bullet(text:'$skill3',style: kGreySubtextstyle),
                      pw.SizedBox(height: 5 ),
                      // Education
                      pw.Text('Education',style: kTitleTextstyle),
                      pw.Divider(thickness: 1,color: PdfColors.grey),
                      pw.SizedBox(height: 5 ),
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text('$course, $instName',style: kGreySubtextstyle),
                            pw.Text('$eddate1',style: kGreySubtextstyle),
                          ]),
                      pw.SizedBox(height: 5),
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text('$edSummary1',style: kGreySubtextstyle),
                            pw.Text('$edLocation1',style: kGreySubtextstyle),
                          ]),
                      pw.SizedBox(height: 10),
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text('$course2, $instname2',style: kGreySubtextstyle),
                            pw.Text('$eddate2',style: kGreySubtextstyle),
                          ]),
                      pw.SizedBox(height: 5),
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text('$edSummary2',style: kGreySubtextstyle),
                            pw.Text('$edLocation2',style: kGreySubtextstyle),
                          ]),
                      pw.SizedBox(height: 10),
                      // Experience
                      pw.Text('Experience',style: kTitleTextstyle),
                      pw.Divider(
                          thickness: 1,color: PdfColors.grey),
                      pw.SizedBox(height: 5),
                      // 1 part
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text('$jobTitle1, $compName1',style: kGreySubtextstyle),
                            pw.Text('$compStartDate1-$compEndDate1',style: kGreySubtextstyle),
                          ]),
                      pw.SizedBox(height: 5),
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text('$summary1',style: kGreySubtextstyle),
                            pw.Text('$compLocation1',style: kGreySubtextstyle),
                          ]),
                      pw.SizedBox(height: 10),
                      // 2 part
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text('$jobTitle2, $compName2',style: kGreySubtextstyle),
                            pw.Text('$compStartDate2-$compEndDate2',style: kGreySubtextstyle),
                          ]),
                      pw.SizedBox(height: 5),
                      pw.Row(
                          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                          children: [
                            pw.Text('$summary2',style: kGreySubtextstyle),
                            pw.Text('$compLocation2',style: kGreySubtextstyle),
                          ]),
                      pw.SizedBox(height: 10),
                      // projects
                      pw.Text('Projects',style: kTitleTextstyle),
                      pw.Divider(thickness: 1,color: PdfColors.grey),
                      pw.SizedBox(height: 5 ),
                      pw.Text('$projecttitle1',style: kGreySubtextstyle),
                      pw.SizedBox(height: 5 ),
                      pw.Text('$projectDescription1',style: kGreySubtextstyle),
                      pw.SizedBox(height: 10 ),
                      pw.Text('$projecttitle2',style: kGreySubtextstyle),
                      pw.SizedBox(height: 5 ),
                      pw.Text('$projectDescription2',style: kGreySubtextstyle),
                      pw.SizedBox(height: 10 ),
                      // language
                      pw.Text('Language',style: kTitleTextstyle),
                      pw.Divider(
                          thickness: 1,color: PdfColors.grey),
                      pw.SizedBox(height: 5),
                      pw.Text('$lang1, $lang2',style: kGreySubtextstyle),
                    ]
                )));
    return pdf27;
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
