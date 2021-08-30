import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// template 8
class Template8 {
  static pw.Document generateText8(
      name,
      address,
      contactNumber,
      gmail,
      addSkills1,
      addSkills2,
      addSkills3,
      companyName1,
      jobTitle1,
      jstartdate1,
      jenddate1,
      clocation1,
      jdescription1,
      companyName2,
      jobTitle2,
      jsdate2,
      jsend2,
      clocation2,
      jdescription2,
      schoolName1,
      sdegree1,
      sduration1,
      slocation1,
      sdescription1,
      schoolName2,
      sdegree2,
      sduration2,
      slocation2,
      sdescription2,
      projecttitle1,
      projectDescription1,
      projecttitle2,
      projectDescription2,
      )  {
    final pdf8 = pw.Document();
    pdf8.addPage(pw.Page(
      build: (context)=>
          pw.Row(
          children: [
            pw.Flexible(
              flex: 2,
              child: pw.Expanded(
                child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Container(
                        height: 725,
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Container(
                                  child: pw.Column(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text('$name',
                                            style: pw.TextStyle(
                                                fontSize: 30,
                                                fontWeight: pw.FontWeight.bold,
                                                color: PdfColors.black
                                            )),
                                        pw.SizedBox(height: 5),
                                        ])
                              ),
                              pw.SizedBox(height: 85),
                              pw.Container(width: 15, child: pw.Divider(thickness: 2)),
                              pw.Container(
                                child: pw.Text('Skills',style: pw.TextStyle(
                                    fontSize: 15,
                                    fontWeight: pw.FontWeight.bold,
                                    color: PdfColors.black) ),
                              ),
                              //Experience
                              pw.SizedBox(height: 28),
                              pw.Container(width: 15, child: pw.Divider(thickness: 2)),
                              pw.Container(
                                child: pw.Text('Experience',style: pw.TextStyle(
                                    fontSize: 15,
                                    fontWeight: pw.FontWeight.bold,
                                    color: PdfColors.black) ),
                              ),
                              //Education
                              pw.SizedBox(height: 115),
                              pw.Container(width: 15, child: pw.Divider(thickness: 2)),
                              pw.Container(
                                child: pw.Text('Education',style: pw.TextStyle(
                                    fontSize: 15,
                                    fontWeight: pw.FontWeight.bold,
                                    color: PdfColors.black) ),
                              ),
                              //Awards
                              pw.SizedBox(height: 115),
                              pw.Container(width: 15, child: pw.Divider(thickness: 2)),
                              pw.Container(
                                child: pw.Text('Projects',style: pw.TextStyle(
                                    fontSize: 15,
                                    fontWeight: pw.FontWeight.bold,
                                    color: PdfColors.black) ),
                              ),
                            ]
                        ),
                      )
                    ]),
              ),
            ),
            pw.SizedBox(
                width: 30
            ),
            pw.Flexible(
                flex: 3,
                child: pw.Expanded(
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Container(width: double.infinity, child: pw.Divider(thickness: 3)),
                      pw.Container(
                        child: pw.Text(
                            '$name',style: pw.TextStyle(fontSize: 15,
                            fontWeight: pw.FontWeight.bold,
                            color: PdfColors.black)
                        ),
                      ),
                      pw.Container(
                        child: pw.Text('$address',style: pw.TextStyle(fontSize: 15)),
                      ),
                      pw.SizedBox(height: 10),
                      //Experience
                      pw.Container(
                        child: pw.Text('$contactNumber\n$gmail',
                          style: pw.TextStyle(fontSize: 15,
                            color: PdfColors.deepOrange,
                          ),
                        ),
                      ),
                      pw.SizedBox(height: 34),
                      pw.Container(width: double.infinity, child: pw.Divider(thickness: 2)),
                      pw.Container(
                        child:  pw.Row(children: [
                          pw.Text('$addSkills1,'),
                          pw.SizedBox(width: 5),
                          pw.Text('$addSkills2,'),
                          pw.SizedBox(width: 5),
                          pw.Text('$addSkills3'),
                        ],

                        ),
                      ),
                      pw.SizedBox(height: 32),
                      pw.Container(width: double.infinity, child: pw.Divider(thickness: 2)),
                      //Company1
                      pw.SizedBox(height: 5),
                      pw.Container(
                        child:  pw.Container(
                          width: 300,
                          child: pw.Text('$companyName1/$jobTitle1',
                              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                        ),
                      ),

                      pw.Text('$jstartdate1-$jenddate1,$clocation1',style: pw.TextStyle(color: PdfColors.grey)),
                      pw.SizedBox(height: 5),
                      pw.Container(
                        child:  pw.Container(
                          width: 300,
                          child: pw.Text('$jdescription1'),
                        ),
                      ),
                      pw.SizedBox(height: 12),
                      //Company2
                      pw.Container(
                        child:  pw.Container(
                          width: 300,
                          child: pw.Text('$companyName2 / $jobTitle2',
                              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                        ),
                      ),
                      pw.Text('$jsdate2-$jsend2,$clocation2',style: pw.TextStyle(color: PdfColors.grey)),
                      pw.SizedBox(height: 5),
                      pw.Container(
                        child:  pw.Container(
                          width: 300,
                          child: pw.Text('$jdescription2'),
                        ),
                      ),
                      pw.SizedBox(height: 20),
                      //Education
                      pw.Container(width: double.infinity, child: pw.Divider(thickness: 2)),
                      pw.SizedBox(height: 5),
                      pw.Text('$schoolName1 /$sdegree1',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text('$sduration1,$slocation1',style: pw.TextStyle(color: PdfColors.grey)),
                      pw.SizedBox(height: 5),
                      pw.Container(
                        width: 300,
                        child: pw.Text('$sdescription1'),
                      ),
                      //school2
                      pw.SizedBox(height: 12),
                      pw.Text('$schoolName2 / $sdegree2',
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text('$sduration2,$slocation2',style: pw.TextStyle(color: PdfColors.grey)),
                      pw.SizedBox(height: 5),
                      pw.Container(
                        width: 300,
                        child: pw.Text('$sdescription2'),
                      ),
                      pw.SizedBox(height: 20),
                      //project info
                      pw.Container(width: double.infinity, child: pw.Divider(thickness: 2)),
                      pw.SizedBox(height: 5),
                      pw.Text('$projecttitle1',style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text('$projectDescription1'),
                      pw.SizedBox(height: 5),
                      pw.Text('$projecttitle2',style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                      pw.Text('$projectDescription2'),
                    ],
                  ),))
          ]
      ),
    ),
    );
    return pdf8;
  }
  static Future<File> saveDocument8(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file8) async {
    final url = file8.path;

    await OpenFile.open(url);
  }
}






//
// import 'dart:io';
// import 'package:open_file/open_file.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
//
// // template 8
// class Template8 {
//   static Future<File> generateText8() async {
//     final pdf8 = pw.Document();
//     pdf8.addPage(pw.Page(
//       build: (context)=> pw.Column(),
//     ),
//     );
//     return saveDocument8(name: 'resume8', pdf: pdf8);
//   }
//   static Future<File> saveDocument8(
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
//   static Future openFile(File file8) async {
//     final url = file8.path;
//
//     await OpenFile.open(url);
//   }
// }
