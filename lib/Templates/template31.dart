import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
class Template31 {
  static pw.Document generateText(
      name,
      address,
      phone,
      email,
      about,
      skills,
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
      lang,
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
                     child: pw.Center(child:Text(name,
                          style: pw.TextStyle(
                              fontSize: 50,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.red400)))),
                  pw.SizedBox(height: 10),
                  pw.Container(
                    child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.center,
                        children: [
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
                          style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold,color: PdfColors.red400))),
                  pw.Divider(),
                  pw.SizedBox(height: 10),
                  pw.Container(child: pw.Text(about,style: pw.TextStyle(fontSize: 12))),
                  pw.SizedBox(height: 10),
                  pw.Text('Education',
                      style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold,color: PdfColors.red400)),
                  pw.Divider(),
                  pw.SizedBox(height: 10),
                  pw.Bullet(text:instName1,
                      style: pw.TextStyle(fontSize: 12)),
                  pw.Bullet(text:course1,style: pw.TextStyle(fontSize: 12)),
                  pw.Bullet(text:'Date- $edDate1',style: pw.TextStyle(fontSize: 12)),
                  pw.SizedBox(height: 10),
                  pw.Bullet(text:instName2,
                      style: pw.TextStyle(fontSize: 12)),
                  pw.Bullet(text:course2,style: pw.TextStyle(fontSize: 12)),
                  pw.Bullet(text:'Date- $edDate2',style: pw.TextStyle(fontSize: 12)),
                  pw.SizedBox(height: 10),
                  pw.Text('Experience',
                      style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold,color: PdfColors.red400)),
                  pw.Divider(),
                  pw.SizedBox(height: 10),
                  pw.Container(
                      child: pw.Text(
                          '$jobTitle1, $organization1',
                          style: pw.TextStyle(
                            fontSize: 12,))),
                  pw.Text('Date- $startdate1 to $enddate1'),
                  pw.Container(
                      height: 30,
                      child:
                      pw.Text( experienceAbout1)),
                  pw.SizedBox(height: 10),

                  pw.Text('$jobTitle2, $organization2',
                      style: pw.TextStyle(
                        fontSize: 12,)),
                  pw.Text('Date- $startdate2 to $enddate2'),
                  pw.Container(
                      height: 30,
                      child:
                      pw.Text( experienceAbout2)),
                  pw.SizedBox(height: 10),
                  pw.Text('Skill',
                      style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold,color: PdfColors.red400)),
                  pw.Divider(),
                  pw.SizedBox(height: 12),
                  pw.Text(skills),
                  pw.SizedBox(height: 10),
                  pw.Text('Languages',
                      style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold,color: PdfColors.red400)),
                  pw.Divider(),
                  pw.SizedBox(height: 12),
                  pw.Text(lang),
                ])));

    return pdf;
  }

}
