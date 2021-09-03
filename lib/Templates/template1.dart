import 'dart:io';

import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf_render/pdf_render_widgets.dart';

class Template1 extends StatefulWidget {
  Template1(
      {required this.name,
      required this.address,
      required this.phone,
      required this.email,
      required this.about,
      required this.jobTitle1,
      required this.organization1,
      required this.startdate1,
      required this.enddate1,
      required this.jobTitle2,
      required this.organization2,
      required this.startdate2,
      required this.enddate2,
      required this.skills,
      required this.instName1,
      required this.course1,
      required this.edDate1,
      required this.experienceAbout1,
      required this.instName2,
      required this.course2,
      required this.edDate2,
      required this.experienceAbout2,
      required this.projTitle1,
      required this.projectDesc1,
      required this.projTitle2,
      required this.projectDesc2});

  final name;
  final address;
  final phone;
  final email;
  final about;
  final jobTitle1;
  final organization1;
  final startdate1;
  final enddate1;
  final jobTitle2;
  final organization2;
  final startdate2;
  final enddate2;
  final skills;
  final instName1;
  final course1;
  final edDate1;
  final experienceAbout1;
  final instName2;
  final course2;
  final edDate2;
  final experienceAbout2;
  final projTitle1;
  final projectDesc1;
  final projTitle2;
  final projectDesc2;

  final pdf = pw.Document();

  @override
  _Template1State createState() => _Template1State();
}

class _Template1State extends State<Template1> {
  var path;

  @override
  void initState() {
    super.initState();
    generateText();
    savePdf();
  }

  generateText() {
    widget.pdf.addPage(
        pw.Page(
          build: (context) => pw.Column(children: [
            //Name
            pw.Container(
                alignment: pw.Alignment.centerLeft,
                child: pw.Text(widget.name, style: pw.TextStyle(fontSize: 20))),
            pw.Divider(color: PdfColors.blue),
            //Address, Phone , Email
            pw.Container(
                child: pw.Row(children: [
              pw.Container(child: pw.Text(widget.address)),
              pw.Container(height: 10, child: pw.VerticalDivider(width: 20)),
              pw.Container(child: pw.Text(widget.phone)),
              pw.Container(height: 10, child: pw.VerticalDivider(width: 20)),
              pw.Container(child: pw.Text(widget.email)),
            ])),
            pw.SizedBox(height: 30),
            //About
            pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Container(
                      alignment: pw.Alignment.topLeft,
                      child:
                          pw.Text('About', style: pw.TextStyle(fontSize: 18))),
                  pw.Container(width: 30, child: pw.Divider())
                ]),

            pw.Container(child: pw.Text(widget.about)),
            pw.SizedBox(height: 30),

            //Experience and Education
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  //Experience,Skills
                  pw.Expanded(
                      child: pw.Container(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Experience',
                                    style: pw.TextStyle(fontSize: 18)),
                                pw.Container(width: 30, child: pw.Divider()),
                                pw.Container(
                                    child: pw.Text(
                                        '$widget.jobTitle1, $widget.organization1',
                                        style: pw.TextStyle(
                                            fontSize: 16,
                                            color: PdfColors.blue300))),
                                //Date
                                pw.Text(
                                    'Date- $widget.startdate1 to $widget.enddate1'),
                                //Achievement or Responsibility
                                pw.Container(
                                    height: 51,
                                    child: pw.Bullet(
                                        text: widget.experienceAbout1)),
                                pw.SizedBox(height: 30),

                                pw.Text(
                                    '$widget.jobTitle2, $widget.organization2',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                //Date
                                pw.Text(
                                    'Date- $widget.startdate2 to $widget.enddate2'),
                                //Achievement or Responsibility
                                pw.Container(
                                    height: 51,
                                    child: pw.Bullet(
                                        text: widget.experienceAbout2)),
                                pw.SizedBox(height: 30),

                                //SKILLS
                                pw.Text('Skills',
                                    style: pw.TextStyle(fontSize: 18)),
                                pw.Container(width: 30, child: pw.Divider()),
                                pw.Text(widget.skills),
                              ]))),
                  //Education, Projects,
                  pw.Expanded(
                      child: pw.Container(
                          alignment: pw.Alignment.centerLeft,
                          child: pw.Column(
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Text('Education',
                                    style: pw.TextStyle(fontSize: 18)),
                                pw.Container(width: 30, child: pw.Divider()),
                                pw.Text(widget.instName1,
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                pw.Text(widget.course1),
                                pw.SizedBox(height: 10),

                                pw.Text('Date- $widget.edDate1'),
                                pw.SizedBox(height: 15),
                                pw.Text(widget.instName2,
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),
                                pw.Text(widget.course2),
                                pw.Text('Date- $widget.edDate2'),
                                pw.SizedBox(height: 30),

                                //Projects&Volunteer
                                pw.Text('Projects & Volunteer',
                                    style: pw.TextStyle(fontSize: 18)),
                                pw.Container(width: 30, child: pw.Divider()),
                                pw.SizedBox(height: 20),

                                pw.Text('$widget.projTitle1',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),

                                //Achievement or Responsibility
                                pw.Bullet(text: '$widget.projectDesc1'),
                                pw.SizedBox(height: 20),
                                pw.Text('$widget.projTitle2',
                                    style: pw.TextStyle(
                                        fontSize: 16,
                                        color: PdfColors.blue300)),

                                //Achievement or Responsibility
                                pw.Bullet(text: '$widget.projectDesc2'),
                              ])))
                ]),
          ]),
        ),
        index: 0);
  }

  var files;

  Future savePdf() async {
    Directory? dir = await getApplicationDocumentsDirectory();
    String documentPath = dir.path;
    File file = File("$documentPath/Resume.pdf");

    setState(() {
      path = file.path;
      isPathAvailable = true;
    });
  }

  bool isPathAvailable = false;

//comment
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume'),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            Directory? dirs = await getExternalStorageDirectory();
            File files = File("${dirs!.path}/Resume.pdf");
            files.writeAsBytesSync(await widget.pdf.save());
          },
          label: Text('Save')),
      body: Container(
        child: isPathAvailable
            ? PdfViewer.openFile(
                path,
                params: PdfViewerParams(pageNumber: 1),
              )
            : Center(
                child: Text('Loading'),
              ),
      ),
    );
  }
}
