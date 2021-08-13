import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfApi1 {
  static Future<File> generateText(
      String name,
      address,
      phone,
      email,
      about,
      jobTitle1,
      organization1,
      date1,
      skills,
      instName1,
      course1,
      edDate1,
      edDate2) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
          build: (context) =>
          pw.Container(
          child:pw.Column(children: [
            //Name
            pw.Container(
                alignment: pw.Alignment.center,
                child: pw.Text(name, style: pw.TextStyle(fontSize: 30))),

            //Address, Phone , Email
            pw.Container(
                child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    children: [
                  pw.Container(child: pw.Center(child:pw.Text(address))),
                  pw.SizedBox(width: 20),

                  pw.Container(child: pw.Center(child: pw.Text(phone))),
                  pw.SizedBox(width: 20),

                  pw.Container(child: pw.Center(child:pw.Text(email))),
                ])),
            pw.SizedBox(height: 30),
            pw.Divider(color: PdfColors.grey),
            pw.SizedBox(height: 30),
            //About
            pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Container(
                      alignment: pw.Alignment.topLeft,
                      child: pw.Text('About',
                          style: pw.TextStyle(fontSize: 18))),
                  pw.Container(width: 30, child: pw.Divider())
                ]),

            pw.Container(child: pw.Text(about)),


            //Experience
            pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  //Experience
                pw.Container(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              crossAxisAlignment:
                              pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Experience',
                                    style: pw.TextStyle(fontSize: 18)),
                                pw.Container(
                                    width: 30, child: pw.Divider()),
                                pw.Text('$jobTitle1, $organization1}',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                //Date
                                pw.Text('Date- $date1'),
                                //Achievement or Responsibility
                                pw.Bullet(
                                    text:
                                    'Notable Achievement/Responsibility'),
                                pw.Bullet(
                                    text:
                                    'Notable Achievement/Responsibility'),
                                pw.Bullet(
                                    text:
                                    'Notable Achievement/Responsibility'),
                                pw.Text('$jobTitle1, $organization1}',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                //Date
                                pw.Text('Date- $date1'),
                                //Achievement or Responsibility
                                pw.Bullet(
                                    text:
                                    'Notable Achievement/Responsibility'),
                                pw.Bullet(
                                    text:
                                    'Notable Achievement/Responsibility'),
                                pw.Bullet(
                                    text:
                                    'Notable Achievement/Responsibility'),
                                pw.Text('$jobTitle1, $organization1}',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                //Date
                                pw.Text('Date- $date1'),
                                //Achievement or Responsibility
                                pw.Bullet(
                                    text:
                                    'Notable Achievement/Responsibility'),
                                pw.Bullet(
                                    text:
                                    'Notable Achievement/Responsibility'),
                                pw.Bullet(
                                    text:
                                    'Notable Achievement/Responsibility'),
                                pw.SizedBox(height: 30),


                              ]
                          )
                  ),


                  //Education


                  pw.Container(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              crossAxisAlignment:
                              pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Education',
                                    style: pw.TextStyle(fontSize: 18)),
                                pw.Container(
                                    width: 30, child: pw.Divider()),
                                pw.Text(instName1,
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                pw.Text(course1),
                                pw.Text('Date- $edDate1'),
                                pw.SizedBox(height: 15),
                                pw.Text('Institution Name',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                pw.Text('Degree or certification'),
                                pw.Text('Date- $edDate2'),
                                pw.SizedBox(height: 30),


                              ])
                      ),

                  //SKILLS
                   pw.Container(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Column(
                          mainAxisAlignment: pw.MainAxisAlignment.start,
                          crossAxisAlignment:
                          pw.CrossAxisAlignment.start,
                        children: [
                          //SKILLS
                          pw.Text('Skills',
                              style: pw.TextStyle(fontSize: 18)),
                          pw.Container(
                              width: 30, child: pw.Divider()),
                          pw.Text(skills),
                        ]
                      ),
                    ),


                    //Projects
                  pw.Container(
                      child: pw.Column(
                        children: [
                          //Projects&Volunteer
                          pw.Text('Projects & Volunteer',
                              style: pw.TextStyle(fontSize: 18)),
                          pw.Container(
                              width: 30, child: pw.Divider()),
                          pw.Text('$jobTitle1, $organization1}',
                              style: pw.TextStyle(
                                  fontSize: 16,
                                  color: PdfColors.blue300)),
                          //Date
                          pw.Text('Date- $date1'),
                          //Achievement or Responsibility
                          pw.Bullet(
                              text:
                              'Notable Achievement/Responsibility'),
                          pw.Bullet(
                              text:
                              'Notable Achievement/Responsibility'),
                          pw.Bullet(
                              text:
                              'Notable Achievement/Responsibility'),
                          pw.Text('$jobTitle1, $organization1}',
                              style: pw.TextStyle(
                                  fontSize: 16,
                                  color: PdfColors.blue300)),
                          //Date
                          pw.Text('Date- $date1'),
                          //Achievement or Responsibility
                          pw.Bullet(
                              text:
                              'Notable Achievement/Responsibility'),
                          pw.Bullet(
                              text:
                              'Notable Achievement/Responsibility'),
                          pw.Bullet(
                              text:
                              'Notable Achievement/Responsibility'),
                        ]
                      ),
                    ),

                ])
          ])
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
