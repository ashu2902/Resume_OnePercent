import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// template 2
class PdfApi2 {
  static Future<File> generateText2(
      name,
      address,
      phone,
      email,
      website,
      companyname1,
      location1,
      startdate1,
      enddate1,
      companyname2,
      location2,
      startdate2,
      enddate2,
      schoolname,
      slocation,
      sdegree,
      referenceName,
      rCompany,
      rContactInformation) async {
    final pdf2 = pw.Document();
    pdf2.addPage(
      pw.Page(
        build: (context) => pw.Column(
          children: [
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child: pw.Text('[$name]',
                style: pw.TextStyle(color: PdfColors.deepOrange, fontSize: 20,)),
          ), //add color
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child: pw.Text("[$address][$phone]",style: pw.TextStyle(fontSize: 17)),
          ),
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child: pw.Text('[$email/$website]',style: pw.TextStyle(fontSize: 17)),
          ),
          pw.SizedBox(height: 30),
          pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                // Objective
                pw.Container(
                  alignment: pw.Alignment.topLeft,
                  child:
                      pw.Text('Objectives', style: pw.TextStyle(fontSize: 17)),
                ),
                pw.Container(
                 alignment: pw.Alignment.centerLeft,
                 child: pw.Text('[This is the place for a brief objective just TAP and start typing to replace it with your own]'),
               ),
              pw.SizedBox(height: 20),

                // Experience
               pw.Container(
                 alignment: pw.Alignment.topLeft,
                 child: pw.Text('Experience',style: pw.TextStyle(fontSize: 17)),
               ),
               pw.SizedBox(height: 10),
               // company 1
               pw.Container( child: pw.Text("[$companyname1,$location1]",style: pw.TextStyle(color: PdfColors.blueGrey500,fontSize: 14))),
               pw.Container( child: pw.Text("Dates [$startdate1]-[$enddate1]")),
               pw.Container( child: pw.Text('[This is the place for a brief summary of your key responsibilities and accomplishments.]')),
               pw.SizedBox(height: 10),
               // company 2
               pw.Container( child: pw.Text("[$companyname2,$location2]",style: pw.TextStyle(color: PdfColors.blueGrey500,fontSize: 14))),
               pw.Container( child: pw.Text("Dates [$startdate2]-[$enddate2]")),
               pw.Container( child: pw.Text('[This is the place for a brief summary of your key responsibilities and accomplishments.]')),
               pw.SizedBox(height: 20),

                // Education
               pw.Container(
                 alignment: pw.Alignment.topLeft,
                 child: pw.Text('Education',style: pw.TextStyle(fontSize: 20)),
               ),
               pw.SizedBox(height: 10),
               pw.Container( child: pw.Text("[$schoolname,$slocation,$sdegree]",style: pw.TextStyle(color: PdfColors.blueGrey500,fontSize: 14))),
               pw.Container( child: pw.Text('[You might want to include your GPA here and a brief summary of relevent coursework,awards and honors]')),
               pw.SizedBox(height: 20),
               // communication
               pw.Container(
                 alignment: pw.Alignment.topLeft,
                 child: pw.Text('Communication',style: pw.TextStyle(fontSize: 20))),
               pw.Container( child: pw.Text('[You delivered that big presentation to rave reviews, this is the place to showcase your skill]')),
               pw.SizedBox(height: 20),
               // References
               pw.Container(
                   alignment: pw.Alignment.topLeft,
                   child: pw.Text('References',style: pw.TextStyle(fontSize: 20))),
               pw.SizedBox(height: 10),
               pw.Container( child: pw.Text("[$referenceName,$rCompany]",style: pw.TextStyle(color: PdfColors.blueGrey500,fontSize: 14) )),
               pw.SizedBox(height: 10),
               pw.Container( child: pw.Text("[$rContactInformation]",style: pw.TextStyle(color: PdfColors.blueGrey500,fontSize: 14))),
             ]
           ),
              ]),
      ),
      );
    return saveDocument2(name: 'new_resume', pdf: pdf2);
  }

  static Future<File> saveDocument2(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file2) async {
    final url = file2.path;

    await OpenFile.open(url);
  }
}
