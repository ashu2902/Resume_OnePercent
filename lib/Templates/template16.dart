import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
class Template16 {
  static pw.Document generateText16(
      String name,
      address,
      phone,
      email,
      about,
      instName1,
      course1,
      edDate1,
      instName2,
      course2,
      edDate2,
      jobTitle1,
      organization1,
      startdate1,
      enddate1,
      experienceAbout1,
      jobTitle2,
      organization2,
      startdate2,
      enddate2,
      experienceAbout2,
      skills,
      )  {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
          build: (context) => pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
            pw.Container(
                alignment: pw.Alignment.centerLeft,
                child: pw.Text(name,
                    style: pw.TextStyle(
                        fontSize: 50,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.indigo900))),
            pw.SizedBox(height: 10),
                  pw.Container(
                      child: pw.Row(children: [
                        pw.Container(
                          child: pw.Text(phone),
                        ),
                        pw.SizedBox(width: 20),
                        pw.Container(child: pw.Text(email)),
                        pw.SizedBox(width: 20),
                        pw.Container(child: pw.Text(address)),
                      ]),),
            pw.SizedBox(height: 30),
            pw.Container(
                alignment: pw.Alignment.topLeft,
                child: pw.Text('Objective',
                    style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold))),

                pw.SizedBox(height: 15),
          pw.Container(child: pw.Text(about,style: pw.TextStyle(fontSize: 18))),
          pw.SizedBox(height: 30),
            pw.Text('Education',
                style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold)),
        pw.SizedBox(height: 15),
            pw.Bullet(text:instName1,
                style: pw.TextStyle(fontSize: 15)),
            pw.Bullet(text:course1,style: pw.TextStyle(fontSize: 15)),
            pw.Bullet(text:'Date- $edDate1',style: pw.TextStyle(fontSize: 13)),
            pw.SizedBox(height: 15),
            pw.Bullet(text:instName2,
                style: pw.TextStyle(fontSize: 15)),
            pw.Bullet(text:course2,style: pw.TextStyle(fontSize: 15)),
            pw.Bullet(text:'Date- $edDate2',style: pw.TextStyle(fontSize: 13)),
            pw.SizedBox(height: 30),
            pw.Text('Experience',
                style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold)),
        pw.SizedBox(height: 15),
            pw.Container(
                child: pw.Text(
                    '$jobTitle1, $organization1',
                    style: pw.TextStyle(
                        fontSize: 15,))),
            pw.Text('Date- $startdate1 to $enddate1'),
            pw.Container(
                height: 30,
                child:
                pw.Text( experienceAbout1)),
            pw.SizedBox(height: 30),

            pw.Text('$jobTitle2, $organization2',
                style: pw.TextStyle(
                    fontSize: 15,)),
            pw.Text('Date- $startdate2 to $enddate2'),
            pw.Container(
                height: 30,
                child:
                pw.Text( experienceAbout2)),
            pw.SizedBox(height: 30),
            pw.Text('Skill',
                style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 15),
            pw.Text(skills),
          ])));

    return pdf;
  }

}
