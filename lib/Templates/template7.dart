import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
class Template7 {
  static Future<File> generateText(
      ) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
          build: (context) =>
              pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                pw.Container(

                  height: 70,
                  width: double.infinity,
                  color:PdfColors.blue900,
                    alignment: pw.Alignment.topLeft,
                    child: pw.Column(
                      children: [
                        pw.Text("    Andrew Kevin",
                            style: pw.TextStyle(
                                fontSize: 30,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.white

                            )),
                        pw.Text("  Customer Service",
                            style: pw.TextStyle(
                            fontSize: 18,
                            color: PdfColors.white),)
                      ]
                    ),

                ),
                pw.SizedBox(
                  height: 30,
                ),
                pw.Row(
                  children: [
                    pw.Container(
                    child:pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          //Details
                          pw.Container(
                            child: pw.Text(
                                'Contact',
                                style: pw.TextStyle(
                                  fontSize: 20,
                                  fontWeight: pw.FontWeight.bold,
                                  color: PdfColors.blue900))),
                          pw.Container(width: 70, child: pw.Divider()),

                          pw.SizedBox(height: 5),
                          pw.Container(
                              child: pw.Text(
                                'info@example.com',

                              )
                          ),
                          pw.Container(
                              child: pw.Text(
                                '1-202-505-0135'
                                    + '\n' + 'New York, US'
                                    + '\n' +'linkedin.com',

                              )
                          ),

                          pw.SizedBox(height: 30),
                          pw.Container(
                              child: pw.Text(
                                'Skills',
                                  style: pw.TextStyle(
                                      fontSize: 20,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.blue900)
                              )
                          ),
                          pw.Container(width: 70, child: pw.Divider()),
                          pw.SizedBox(height: 5),
                          pw.Container(
                              child: pw.Text(
                                'Communication' + '\n' + 'Problem Solving' + '\n' + 'Adaptebility' + '\n' + 'Production knowledge',

                              )
                          ),
                          //Project Management
                          pw.SizedBox(height: 30),
                          pw.Container(
                              child: pw.Text(
                                'Education',
                                  style: pw.TextStyle(
                                      fontSize: 20,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.blue900)
                              )
                          ),
                          pw.Container(width: 70, child: pw.Divider()),
                          pw.SizedBox(height: 5),
                          pw.Container(
                            child: pw.Text(
                              'MBA(HR)' + '\n' + 'Univercity of California' + '\n' + 'Berkeley,CA',

                            ),
                          ),
                          //Languages
                          pw.SizedBox(height: 30),
                          pw.Container(
                              child: pw.Text(
                                'Hobbies',
                                  style: pw.TextStyle(
                                      fontSize: 20,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.blue900)
                              )
                          ),
                          pw.Container(width: 70, child: pw.Divider()),
                          pw.SizedBox(height: 10),
                          pw.Container(
                            child: pw.Text(
                              'Travelling' + '\n' + 'Reading Books'+ '\n' +'Cooking'+ '\n' +'Driving',

                            ),
                          ),
                        ]
                    ),),
                    pw.SizedBox(width: 20),
                    pw.Container(
                      width: 2,
                        height: 530,
                        child: pw.VerticalDivider(width: 20)),
          pw.SizedBox(width: 20),
          pw.Flexible(
              flex: 2,
              child: pw.Expanded(
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                          child: pw.Text(
                            'Summary',style: pw.TextStyle(fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.blue900)
                          ),
                        ),
                        pw.Container(width: 70, child: pw.Divider()),
                         pw.SizedBox(height: 10),
                         pw.Container(
                          width: 300,
                          child: pw.Text(
                            'Lorem ipsum dolor sit amet, '+
                                'consectetur adipiscing elit, '+
                                'sed do eiusmod tempor incididunt '+
                                'ut labore et dolore magna aliqua. '+
                                'Ut enim ad minim veniam, quis nostrud',

                            maxLines: 5,
                          ),
                        ),
                        pw.SizedBox(height: 30),
                        //Experience
                        pw.Container(
                          child: pw.Text(
                            'Experience',
                            style: pw.TextStyle(fontSize: 20,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.blue900,
                          ),
                        ),
                        ),
                        pw.Container(width: 70, child: pw.Divider()),
                        pw.SizedBox(height: 10),
                        pw.Container(
                          child:  pw.Container(
                            width: 300,
                            child: pw.Text(
                              'Sample Title - 1' +
                                  '\n' +
                                  'Sample Organization - 1' +
                                  '\n' +
                                  'Date - 01-02-20XX',

                            ),
                          ),
                        ),
                        pw.Container(
                          child: pw.Bullet(
                            text:
                            'Notable Achievement/Responsibility',

                          ),
                        ),
                        pw.Container(
                          child: pw.Bullet(
                            text:
                            'Notable Achievement/Responsibility',

                          ),
                        ),
                        pw.Container(
                          child: pw.Bullet(
                            text:
                            'Notable Achievement/Responsibility',

                          ),
                        ),
                        pw.SizedBox(height: 10),
                        pw.Container(
                          child:  pw.Container(
                            width: 300,
                            child: pw.Text(
                              'Sample Title - 2' +
                                  '\n' +
                                  'Sample Organization - 2' +
                                  '\n' +
                                  'Date - 01-02-20XX',

                            ),
                          ),
                        ),
                        pw.Container(
                          child: pw.Bullet(
                            text:
                            'Notable Achievement/Responsibility',

                          ),
                        ),
                        pw.Container(
                          child: pw.Bullet(
                            text:
                            'Notable Achievement/Responsibility',

                          ),
                        ),
                        pw.Container(
                          child: pw.Bullet(
                            text:
                            'Notable Achievement/Responsibility',

                          ),
                        ),
                        pw.SizedBox(height: 30),
                        //Education
                        pw.Container(
                          child: pw.Text(
                            'Project',
                            style: pw.TextStyle(fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.blue900,
                            ),
                          ),
                        ),
                        pw.Container(width: 70, child: pw.Divider()),
                        pw.SizedBox(height: 10),
                        pw.Container(
                          child: pw.Text(
                            'Associate of Computer Science - Santa Maria University'
                                + '\n' + 'Sep 2012 - Sep2016',

                          ),
                        ),
                        pw.Container(
                            child: pw.Text(
                              'Graduated with highest honor',

                            )
                        ),
                      ],
                    ),))
                  ],
                ),
     ]) ),
    );

    return saveDocument(name: 'my_resume.pdf', pdf: pdf);
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
