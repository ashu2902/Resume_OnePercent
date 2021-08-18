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
      about,
      companyname1,
      location1,
      startdate1,
      enddate1,
      summary1,
      companyname2,
      location2,
      startdate2,
      enddate2,
      summary2,
      schoolname,
      slocation,
      sdegree,
      edSummary1,
      schoolname2,
      slocation2,
      sdegree2,
      edSummary2,
      skills) async {
    final pdf2 = pw.Document();
    pdf2.addPage(
      pw.Page(
        build: (context) => pw.Column(children: [
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child: pw.Text('$name',
                style: pw.TextStyle(
                  color: PdfColors.deepOrange,
                  fontSize: 20,
                )),
          ), //add color
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child:
                pw.Text("$address,$phone", style: pw.TextStyle(fontSize: 17)),
          ),
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child: pw.Text('$email', style: pw.TextStyle(fontSize: 17)),
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
                  child: pw.Text('$about'),
                ),
                pw.SizedBox(height: 20),

                // Experience
                pw.Container(
                  alignment: pw.Alignment.topLeft,
                  child:
                      pw.Text('Experience', style: pw.TextStyle(fontSize: 17)),
                ),
                pw.SizedBox(height: 10),
                // company 1
                pw.Container(
                    child: pw.Text("[$companyname1,$location1]",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.Container(child: pw.Text("Dates $startdate1 to $enddate1")),
                pw.Container(child: pw.Text('$summary1')),
                pw.SizedBox(height: 10),
                // company 2
                pw.Container(
                    child: pw.Text("[$companyname2,$location2]",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.Container(child: pw.Text("Dates [$startdate2]-[$enddate2]")),
                pw.Container(child: pw.Text('$summary2')),
                pw.SizedBox(height: 20),

                // Education
                pw.Container(
                  alignment: pw.Alignment.topLeft,
                  child:
                      pw.Text('Education', style: pw.TextStyle(fontSize: 20)),
                ),
                pw.SizedBox(height: 10),
                //Education1
                pw.Container(
                    child: pw.Text("[$schoolname,$slocation,$sdegree]",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.Container(child: pw.Text('$edSummary1')),
                pw.SizedBox(height: 20),
                //Education 2
                pw.Container(
                    child: pw.Text("[$schoolname2,$slocation,$sdegree2]",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.Container(child: pw.Text('$edSummary2')),

                pw.SizedBox(height: 20),
                // References
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child:
                        pw.Text('SKILLS', style: pw.TextStyle(fontSize: 20))),
                pw.SizedBox(height: 10),
                pw.Container(
                    child: pw.Text("$skills",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.SizedBox(height: 10),
              ]),
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
