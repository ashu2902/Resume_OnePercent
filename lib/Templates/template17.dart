import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
class Template17 {
  static pw.Document generateText17(
      String name,
      address,
      email,
      phone,
      about,
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
      instName1,
      course1,
      edDate1,
      instName2,
      course2,
      edDate2,
      skills,
      ) {
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
                              fontWeight: pw.FontWeight.bold,))),
                  pw.SizedBox(height: 10),
                  pw.Container(
                    child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                      pw.Column(
                        children: [
                          pw.Container(child: pw.Text(address,style: pw.TextStyle(fontSize: 15))),
                          pw.SizedBox(height: 5),
                          pw.Container(child: pw.Text(email,style: pw.TextStyle(fontSize: 15))),
                          pw.SizedBox(height: 5),
                    pw.Container(
                        child: pw.Text(phone,style: pw.TextStyle(fontSize: 15)),
                  ),
                ]),
                      pw.SizedBox(width: 150),
                      pw.Container(child: pw.Text(about,style: pw.TextStyle(fontSize: 15))),
                        ]
                      ),),
                  pw.SizedBox(height: 30),
                  pw.Row(
                    children: [
                      pw.Text('Experience',
                          style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold,color: PdfColors.indigo600)),
                      pw.SizedBox(width: 10),
                      pw.Container(
                          width: 300, child: pw.Divider(color: PdfColors.indigo600,thickness: 3)),
                    ]
                  ),
                  pw.SizedBox(height: 15),
                  pw.Row(
                    children: [
                      pw.Container(
                          child: pw.Text(
                              '$jobTitle1',
                              style: pw.TextStyle(
                                fontSize: 15,))),
                      pw.SizedBox(width: 150),
                      pw.Container(
                          child: pw.Text(
                              '$organization1',
                              style: pw.TextStyle(
                                fontSize: 15,))),
                    ]
                  ),
                  pw.SizedBox(height: 8),
                  pw.Text('Date- $startdate1 to $enddate1',style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(height: 8),
                  pw.Container(
                      height: 30,
                      child:
                      pw.Text( experienceAbout1,style: pw.TextStyle(fontSize: 15))),
                  pw.SizedBox(height: 30),

                  pw.Row(
                      children: [
                        pw.Container(
                            child: pw.Text(
                                '$jobTitle2',
                                style: pw.TextStyle(
                                  fontSize: 15,))),
                        pw.SizedBox(width: 150),
                        pw.Container(
                            child: pw.Text(
                                '$organization2',
                                style: pw.TextStyle(
                                  fontSize: 15,))),
                      ]
                  ),
                  pw.SizedBox(height: 8),
                  pw.Text('Date- $startdate2 to $enddate2',style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(height: 8),
                  pw.Container(
                      height: 30,
                      child:
                      pw.Text( experienceAbout2,style: pw.TextStyle(fontSize: 15))),
                  pw.SizedBox(height: 30),
                  pw.Row(
                      children: [
                        pw.Text('Education',
                            style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold,color: PdfColors.indigo600)),
                        pw.SizedBox(width: 10),
                        pw.Container(
                            width: 300, child: pw.Divider(color: PdfColors.indigo600,thickness: 3)),
                      ]
                  ),
                  pw.SizedBox(height: 15),
                  pw.Text(instName1,
                      style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(height: 8),
                  pw.Text(course1,style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(height: 8),
                  pw.Text('Date- $edDate1',style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(height: 15),
                  pw.Text(instName2,
                      style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(height: 8),
                  pw.Text(course2,style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(height: 8),
                  pw.Text('Date- $edDate2',style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(height: 30),
                  pw.Row(
                      children: [
                        pw.Text('Skills',
                            style: pw.TextStyle(fontSize: 25,fontWeight: pw.FontWeight.bold,color: PdfColors.indigo600)),
                        pw.SizedBox(width: 10),
                        pw.Container(
                            width: 300, child: pw.Divider(color: PdfColors.indigo600,thickness: 3)),
                      ]
                  ),
                  pw.SizedBox(height: 15),
                  pw.Text(skills,style: pw.TextStyle(fontSize: 15)),
                ])));

    return pdf;
  }
}
