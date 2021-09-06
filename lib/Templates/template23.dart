import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/Screens/PdfScreen.dart';

class Template23 {
  static final kTitleTextstyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      fontSize: 20,
      color: PdfColors.blue,
      letterSpacing: 1)
  ;
  static final kTitleBlackSubTextstyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      color: PdfColors.black,
      letterSpacing: 1)
  ;
  static final kTitleGreySubTextstyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      color: PdfColors.grey,
      letterSpacing: 1)
  ;
  static pw.Document generateText23(){
    final pdf23 = pw.Document();
    pdf23.addPage(
        pw.Page(
            margin: pw.EdgeInsets.all(0.0),
            build: (context) => pw.Row(
              children: [
                // 1 part
               pw.Expanded(
                 flex: 1,
                 child: pw.Padding(
                   padding: pw.EdgeInsets.fromLTRB(40, 40, 0, 0),
                   child: pw.Column(
                     children: [
                        pw.Text("Himank Maheshwari",style: pw.TextStyle(
                          color: PdfColors.blue,
                          fontSize: 30,
                          fontWeight: pw.FontWeight.bold
                        ))
                     ]
                   ) ),
               ),
                // 2 part
                pw.Expanded
                  (
                  flex: 1,
                  child: pw.Padding(
                    padding: pw.EdgeInsets.fromLTRB(30, 40, 0, 0),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          //Education
                          pw.Text("Education".toUpperCase(),style: kTitleTextstyle)
                        ]
                    ) ),
                ),
              ]
            )
        ));
    return pdf23;
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
