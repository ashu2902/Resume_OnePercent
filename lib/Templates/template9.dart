
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// template 8
class Template9 {
  static Future<File> generateText9() async {
    final pdf8 = pw.Document();
    pdf8.addPage(pw.Page(
      build: (context)=> pw.Column(),
    ),
    );
    return saveDocument9(name: 'resume9', pdf: pdf8);
  }
  static Future<File> saveDocument9(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file9) async {
    final url = file9.path;

    await OpenFile.open(url);
  }
}
