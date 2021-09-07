import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
class Template33 {
  static pw.Document generateText(
      String name,
      address,
      email,
      phone,
      about,
      Projecttitle1,
      ProjectDescription1,
      Projecttitle2,
      ProjectDescription2,
      instName1,
      course1,
      edDate1,
      instName2,
      course2,
      edDate2,
      skills,
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
      Lang,
      ) {
    final pdf = pw.Document();
    pdf.addPage(
        pw.Page(
            build: (context) => pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Container(
                    child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Container(
                              alignment: pw.Alignment.centerLeft,
                              child: pw.Text(name,
                                  style: pw.TextStyle(
                                    fontSize: 50,
                                    fontWeight: pw.FontWeight.bold,color: PdfColors.orange600))),
                          pw.SizedBox(width: 250),
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
                        ]
                    ),),
                  pw.Divider(color: PdfColors.orange600,thickness: 2,),
                  pw.SizedBox(height: 30),
                  pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        // 1 part
                        pw.Expanded(
                          flex: 1,
                              child: pw.Column(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    // about
                                    pw.Text("About me".toUpperCase(),style: pw.TextStyle(color: PdfColors.orange600,fontSize: 15,fontWeight: pw.FontWeight.bold)),
                                    pw.Container(width: 30,child: pw.Divider(thickness: 1,color: PdfColors.orange600,),),
                                    pw.SizedBox(height: 10),
                                    pw.Text('$about',style:pw.TextStyle(fontSize: 10)),
                                    pw.SizedBox(height: 10),
                                    // Projects
                                    pw.Text("projects".toUpperCase(),style: pw.TextStyle(color: PdfColors.orange600,fontSize: 15,fontWeight: pw.FontWeight.bold)),
                                    pw.Container(width: 30,child: pw.Divider(thickness: 1,color: PdfColors.orange600,),),
                                    pw.SizedBox(height: 10),
                                    pw.Text('$Projecttitle1',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$ProjectDescription1',),
                                    pw.SizedBox(height: 5),
                                    //2
                                    pw.SizedBox(height: 10),
                                    pw.Text('$Projecttitle2',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$ProjectDescription2',),
                                    pw.SizedBox(height: 5),
                                  ]
                              ) ),
                        // 2 part
                        pw.Expanded
                          (
                          flex: 1,
                              child: pw.Column(
                                  mainAxisAlignment: pw.MainAxisAlignment.start,
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    //Education
                                    pw.Text("Education".toUpperCase(),style: pw.TextStyle(color: PdfColors.orange600,fontSize: 15,fontWeight: pw.FontWeight.bold)),
                                    pw.Container(width: 30,child: pw.Divider(thickness: 1,color: PdfColors.orange600,),),
                                    pw.SizedBox(height: 10),
                                    pw.Text('$course1',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$instName1',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$edDate1',),
                                    pw.SizedBox(height: 10),
                                    pw.Text('$course2',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$instName2',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$edDate2',),
                                    pw.SizedBox(height: 15),
                                    //skills
                                    pw.Text("skills".toUpperCase(),style: pw.TextStyle(color: PdfColors.orange600,fontSize: 15,fontWeight: pw.FontWeight.bold)),
                                    pw.Container(width: 30,child: pw.Divider(thickness: 1,color: PdfColors.orange600,),),
                                    pw.SizedBox(height: 10),
                                    pw.Text('$skills',),
                                    pw.SizedBox(height: 15),
                                    //Experience
                                    pw.SizedBox(height: 15),
                                    pw.Text("Experience".toUpperCase(),style: pw.TextStyle(color: PdfColors.orange600,fontSize: 15,fontWeight: pw.FontWeight.bold)),
                                    pw.Container(width: 30,child: pw.Divider(thickness: 1,color: PdfColors.orange600,),),
                                    pw.SizedBox(height: 10),
                                    //1
                                    pw.Text('$jobTitle1',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$organization1',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$startdate1- $enddate1',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$experienceAbout1',),
                                    //2
                                    pw.SizedBox(height: 10),
                                    //1
                                    pw.Text('$jobTitle2',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$organization2',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$startdate2- $enddate2',),
                                    pw.SizedBox(height: 5),
                                    pw.Text('$experienceAbout2',),
                                    pw.SizedBox(height: 10),
                                    //Language
                                    pw.Text("language".toUpperCase(),style: pw.TextStyle(color: PdfColors.orange600,fontSize: 15,fontWeight: pw.FontWeight.bold)),
                                    pw.Container(width: 30,child: pw.Divider(thickness: 1,color: PdfColors.orange600,),),
                                    pw.SizedBox(height: 10),
                                    pw.Text('$Lang',),
                                  ]
                              ) ),
                      ]
                  )
                ])));

    return pdf;
  }
}
