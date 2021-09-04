import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template21 {

  static final kTitleTextstyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      fontSize: 15,
      color: PdfColors.black,
      decoration: pw.TextDecoration.underline,
      decorationThickness: 1.5,
  );
  static final kSubTitleTextstyle = pw.TextStyle(
    color: PdfColors.grey
  );
  static pw.Document generateText21(
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
    final pdf21 = pw.Document();
    pdf21.addPage(
        pw.Page(
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text('$name',
              style: pw.TextStyle(
              color: PdfColors.blueAccent,
              fontSize: 30)
          ),
          pw.SizedBox(height: 10),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisAlignment: pw.MainAxisAlignment.start,
            children: [
              pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  //Email
                  pw.Text('Email',style: pw.TextStyle(color: PdfColors.black,
                  fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 5),
                  //Phone
                  pw.Text('Phone',style: pw.TextStyle(color: PdfColors.black,
                      fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 5),
                  //Address
                  pw.Text('Address',style: pw.TextStyle(color: PdfColors.black,
                      fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 5),
                ]
              ),
              pw.SizedBox(width: 30),
              pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Text('$email',
                      style: pw.TextStyle(color: PdfColors.grey,)),
                  pw.SizedBox(height: 5),
                  pw.Text('$phone',
                      style: pw.TextStyle(color: PdfColors.grey,)),
                  pw.SizedBox(height: 5),
                  pw.Text('$address',
                      style: pw.TextStyle(color: PdfColors.grey,)),
                  pw.SizedBox(height: 5),
                ]
              )
            ]
          ),
          pw.SizedBox(height: 10),
          pw.Divider(thickness: 2),
          // OBJECTIVE
          pw.Text('OBJECTIVE',
              style: kTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Container(
            height: 30,
            child: pw.Text('$about',style: kSubTitleTextstyle),
          ),
          pw.SizedBox(height: 10),
          // SKILLS
          pw.Text('SKILLS',style: kTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Bullet(text: '$skill1',style: kSubTitleTextstyle),
          pw.Bullet(text: '$skill2',style: kSubTitleTextstyle),
          pw.Bullet(text: '$skill3',style: kSubTitleTextstyle),
          pw.SizedBox(height: 10),
          // EDUCATIONAl
          pw.Text('educational qualification'.toUpperCase(),
              style: kTitleTextstyle),
          pw.SizedBox(height: 5),
          //1
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text('$course'),
              pw.Text('$eddate1',style: kSubTitleTextstyle)
            ]
          ),
          pw.Text('$edLocation1',style: kSubTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Text('$edSummary1',style: kSubTitleTextstyle),
          pw.SizedBox(height: 5),
          //2
          pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text('$course2'),
                pw.Text('$eddate2',style: kSubTitleTextstyle)
              ]
          ),
          pw.Text('$edLocation2',style: kSubTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Text('$edSummary2',style: kSubTitleTextstyle),
             pw.SizedBox(height: 10),
          //Projects
          pw.Text('academic projects'.toUpperCase(),
              style: kTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Text('$projecttitle1',style: kSubTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Text('$projectDescription1',style: kSubTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Text('$projecttitle2',style: kSubTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Text('$projectDescription2',style: kSubTitleTextstyle),
          pw.SizedBox(height: 10),
          // Experience
          pw.Text('Experience'.toUpperCase(),
              style: kTitleTextstyle),
          pw.SizedBox(height: 5),
          // Company 1
          pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text('$jobTitle1'),
                pw.Text('$compStartDate1 - $compEndDate1',style: kSubTitleTextstyle)
              ]
          ),
          pw.Text('$compName1,',style: kSubTitleTextstyle),
          pw.Text('$compLocation1',style: kSubTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Text('$summary1,',style: kSubTitleTextstyle),
          pw.SizedBox(height: 5),
          // Company 2
          pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text('$jobTitle2'),
                pw.Text('$compStartDate2 - $compEndDate2',style: kSubTitleTextstyle)
              ]
          ),
          pw.Text('$compName2',style: kSubTitleTextstyle),
          pw.Text('$compLocation2',style: kSubTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Text('$summary2',style: kSubTitleTextstyle),
          pw.SizedBox(height: 10),
          // Language
          pw.Text('Languages'.toUpperCase(),
              style: kTitleTextstyle),
          pw.SizedBox(height: 5),
          pw.Text(' $lang1 , $lang2',style: kSubTitleTextstyle)
        ]
        )
    ));
    return pdf21;
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

// //
// import 'dart:io';
// import 'package:open_file/open_file.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
//
// class Template21 {
//   static pw.Document generateText21(){
//     final pdf21 = pw.Document();
//     pdf21.addPage(
//         pw.Page(
//             build: (context) => pw.Column(
//
//             )
//         ));
//     return pdf21;
//   }
//
//
//   static Future<File> saveDocument(
//       {required String name, required pw.Document pdf}) async {
//     final bytes = await pdf.save();
//
//     final dir = await getApplicationDocumentsDirectory();
//     final file = File('${dir.path}/$name');
//
//     await file.writeAsBytes(bytes);
//     return file;
//   }
//
//   static Future openFile(File file) async {
//     final url = file.path;
//
//     await OpenFile.open(url);
//   }
// }
