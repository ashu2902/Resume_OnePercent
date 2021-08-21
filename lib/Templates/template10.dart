
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// template 10
class Template10 {
  static final kTitleTextStyle = pw.TextStyle(
    fontWeight: pw.FontWeight.bold,
    fontSize: 30,
    letterSpacing: 1,
    color: PdfColors.blue900
  );
  static final kSubTitleTextStyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      fontSize: 30,
      letterSpacing: 1,
  );
  static Future<File> generateText10() async {
    final pdf10 = pw.Document();
    pdf10.addPage(pw.Page(
      build: (context)=> pw.Column(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Column(
              children: [
                pw.Text('Name',style: kTitleTextStyle)
                   ]
          ),
        ]
      ),
    ),
    );
    return saveDocument10(name: 'resume10', pdf: pdf10);
  }
  static Future<File> saveDocument10(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file8) async {
    final url = file8.path;

    await OpenFile.open(url);
  }
}
