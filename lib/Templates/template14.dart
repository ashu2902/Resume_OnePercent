import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
class Template14 {
  static Future<File> generateText(
      ) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
          build: (context) =>
          pw.Row(
            children: [
              pw.Flexible(
                flex: 1,
                child: pw.Expanded(
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                       pw.Container(
                         color: PdfColors.grey100,
                         height: 725,
                         child: pw.Column(
                           crossAxisAlignment: pw.CrossAxisAlignment.start,
                           children: [
                             pw.Container(
                               child: pw.Column(
                                 children: [
                                   pw.Text('PAUL'+'\n' +'JOHNSON',
                                       style: pw.TextStyle(
                                           fontSize: 30,
                                           fontWeight: pw.FontWeight.bold,
                                           color: PdfColors.black

                                       )),
                                   pw.SizedBox(
                                     height: 10
                                   ),
                                   pw.Text("CREATIVE DIRECTOR",
                                     style: pw.TextStyle(
                                         fontSize: 15,
                                         color: PdfColors.black),)
                                 ]
                               )
                             ),
                             pw.SizedBox(
                               height: 30
                             ),
                             pw.Container(
                               child: pw.Text('Contact',style: pw.TextStyle(
                                   fontSize: 20,
                                   fontWeight: pw.FontWeight.bold,
                                   color: PdfColors.black) ),
                             ),
                             pw.Container(width: 50, child: pw.Divider()),
                             pw.SizedBox(height: 10),
                             pw.Container(
                               child: pw.Text(
                                 '555 Street City/Town'+'\n'+'State/Country555',
                                 style: pw.TextStyle(fontWeight: pw.FontWeight.bold)
                               ),
                             ),
                             pw.SizedBox(height: 10),
                             pw.Container(

                                 child: pw.Text(
                                  '00 399 399 9949' +'\n'+'www.domainname.com'
                                 )),
                             pw.Container(
                               child: pw.Text(
                                 'example@example.com',
                               ),
                             ),
                             pw.SizedBox(height: 30),
                             pw.Container(
                                 child: pw.Text(
                                   'Expertise',
                                     style: pw.TextStyle(
                                         fontSize: 20,
                                         fontWeight: pw.FontWeight.bold,
                                         color: PdfColors.black)
                                 )),
                             pw.Container(width: 50, child: pw.Divider()),
                             pw.SizedBox(height: 10),
                             pw.Container(
                                 child: pw.Text(
                                   'Resources Management' +
                                       '\n' +
                                       'Public Relation' +
                                       '\n' +
                                       'Team Leadership' +
                                       '\n' +
                                       'Socialmedia Marketing'
                                           '\n' +
                                       'It Application'
                                           '\n' +
                                       'Online marketing'
                                           '\n' +
                                       'Bussiness System',

                                 )),
                             //Project Management
                             pw.SizedBox(height: 30),
                             pw.Container(
                                 child: pw.Text(
                                   'Award',
                                     style: pw.TextStyle(
                                         fontSize: 20,
                                         fontWeight: pw.FontWeight.bold,
                                         color: PdfColors.black)
                                 )),
                             pw.Container(width: 50, child: pw.Divider()),
                             pw.SizedBox(height: 10),
                             pw.Container(
                               child: pw.Text(
                                   'Creative Award',
                                   style: pw.TextStyle(fontWeight: pw.FontWeight.bold)
                               ),
                             ),
                             pw.Container(
                               child: pw.Text(
                                 'Categorey' + '\n' + 'Company/Organization' + '\n' + '2021',

                               ),
                             ),
                             //Languages
                             pw.SizedBox(height: 30),
                             pw.Container(
                                 child: pw.Text(
                                   'Follow Me',
                                     style: pw.TextStyle(
                                         fontSize: 20,
                                         fontWeight: pw.FontWeight.bold,
                                         color: PdfColors.black)
                                 )),
                             pw.Container(width: 50, child: pw.Divider()),
                             pw.SizedBox(height: 10),
                             pw.Container(
                               child: pw.Text(
                                 'Linkedin' + '\n' + 'Facebook'
                                   ,style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
                               ),
                             ),
                           ]
                         ),
                       )
                      ]),
                ),
              ),
              pw.SizedBox(
                width: 20
              ),
              pw.Flexible(
                  flex: 2,
                  child: pw.Expanded(
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                          child: pw.Text(
                              'Statement',style: pw.TextStyle(fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black)
                          ),
                        ),
                        pw.Container(width: 70, child: pw.Divider()),
                        pw.SizedBox(height: 10),
                        pw.Container(
                          width: 300,
                          child: pw.Text(
                            '" Lorem ipsum dolor sit amet, '+
                                'consectetur adipiscing elit, '+
                                'sed do eiusmod tempor incididunt '+
                                'ut labore et dolore magna aliqua. '+
                                'Ut enim ad minim veniam, quis nostrud',
                          ),
                        ),
                        pw.SizedBox(height: 30),
                        //Experience
                        pw.Container(
                          child: pw.Text(
                            'Work Experience',
                            style: pw.TextStyle(fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black,
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
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,)
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
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,)
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
                        pw.SizedBox(
                          height: 10
                        ),
                        pw.Container(
                          child:  pw.Container(
                            width: 300,
                            child: pw.Text(
                                'Sample Title - 3' +
                                    '\n' +
                                    'Sample Organization - 3' +
                                    '\n' +
                                    'Date - 01-02-20XX',
                                style: pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,)
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
                            'Education',
                            style: pw.TextStyle(fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black,
                            ),
                          ),
                        ),
                        pw.Container(width: 70, child: pw.Divider()),
                        pw.SizedBox(height: 10),
                        pw.Container(
                          child: pw.Text(
                            'Bachelor Graphic Design'
                                + '\n' + 'Sep 2012 - Sep2016',
                            style: pw.TextStyle(fontWeight: pw.FontWeight.bold)
                          ),
                        ),
                        pw.Container(
                            child: pw.Text(
                              'University of Place',
                            )
                        ),
                        pw.Container(
                            child: pw.Text(
                              'Dummy is evers since the when unknown printer',

                            )
                        ),
                        pw.SizedBox(height: 10),
                        pw.Container(
                          child: pw.Text(
                              'Course Studis'
                                  + '\n' + 'Sep 2010',
                              style: pw.TextStyle(fontWeight: pw.FontWeight.bold)
                          ),
                        ),
                        pw.Container(
                            child: pw.Text(
                              'Inatitution of Goverment',
                            )
                        ),
                        pw.Container(
                            child: pw.Text(
                              'gallery type and print',

                            )
                        ),
                      ],
                    ),))
        ]
    ),
      ),
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
