
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template11{

  static final kTitleTextStyle = pw.TextStyle(
    fontWeight: pw.FontWeight.bold,
    fontSize: 22,
    letterSpacing: 2,
  );
  static final kSubTitleTextStyle = pw.TextStyle(
    fontWeight: pw.FontWeight.bold,
    fontSize: 20,
  );
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 18,
  );
  static Future<File> generateTemplate() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) =>
        pw.Expanded(
          child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                //Name, Address and About
                pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      pw.Container(
                        child: pw.Text(
                          'John Smith'.toUpperCase(),
                          style: pw.TextStyle(
                            fontSize: 30,
                            fontWeight: pw.FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Container(
                        child: pw.Text(
                          '123 Address' + '\n' + '+91-123456789'
                              + '\n' + 'email@email.com',
                          style: pw.TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Container(
                        child: pw.Text(
                          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididuntut labore et dolore magna aliqua. Ut enim ad minim veniam, quis  nostrud exercitation ullamco''',
                          style: pw.TextStyle(
                            fontSize: 16,
                            fontStyle: pw.FontStyle.italic,
                          ),
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Divider(
                          thickness: 2,
                      ),

                    ]
                ),
                pw.SizedBox(height: 10),
                //Professional Experience
                pw.Container(
                  child: pw.Text(
                    'Professional Experience'.toUpperCase(),
                    style: kTitleTextStyle,
                  ),
                ),
                //Company name
                pw.Container(
                  child: pw.Text(
                    'Redford & Sons, Boston, MA',
                    style: kSubTitleTextStyle,
                  ),
                ),
                //Position
                pw.Container(
                  child: pw.Text(
                      'Administrator Assistant, Sept 2015 - present',
                      style: kSubTitleTextStyle.copyWith(fontWeight: pw.FontWeight.normal)
                  ),
                ),
                //Achievements and responsibility
                pw.Bullet(
                  text: 'Notable Achievement/Responsibility',
                  style: kContentTextStyle,
                ),
                pw.Bullet(
                  text: 'Notable Achievement/Responsibility',
                  style: kContentTextStyle,
                ),
                pw.Bullet(
                  text: 'Notable Achievement/Responsibility',
                  style: kContentTextStyle,
                ),
                //Company name
                pw.Container(
                  child: pw.Text(
                    'Redford & Sons, Boston, MA',
                    style: kSubTitleTextStyle,
                  ),
                ),
                //Position
                pw.Container(
                  child: pw.Text(
                      'Administrator Assistant, Sept 2015 - present',
                      style: kSubTitleTextStyle.copyWith(fontWeight: pw.FontWeight.normal)
                  ),
                ),
                //Achievements and responsibility
                pw.Bullet(
                  text: 'Notable Achievement/Responsibility',
                  style: kContentTextStyle,
                ),
                pw.Bullet(
                  text: 'Notable Achievement/Responsibility',
                  style: kContentTextStyle,
                ),
                pw.Bullet(
                  text: 'Notable Achievement/Responsibility',
                  style: kContentTextStyle,
                ),
                pw.SizedBox(height: 10),
                //Education
                pw.Container(
                  child: pw.Text(
                    'Education'.toUpperCase(),
                    style: kTitleTextStyle,
                  ),
                ),
                //Name of Institution
                pw.Container(
                  child: pw.Text(
                    'River Brooks University',
                    style: kSubTitleTextStyle,
                  ),
                ),
                //Degree
                pw.Container(
                  child: pw.Text(
                    'Bachelor of Arts',
                    style: pw.TextStyle(
                      fontStyle: pw.FontStyle.italic,
                      fontSize: 18,
                    ),
                  ),
                ),
                //Notable Achievement
                pw.Bullet(
                  text: 'Honors cum laude (GPA 3.5/4.0)',
                ),
                pw.SizedBox(height: 10),
                //Skills
                pw.Container(
                  child: pw.Text(
                    'Additional Skills'.toUpperCase(),
                    style: kTitleTextStyle,
                  ),
                ),
                pw.SizedBox(height: 10),
                pw.Bullet(
                    text: 'Expert in Microsoft Office',
                    style: kContentTextStyle,
                ),
                pw.Bullet(
                    text: 'Bilingual in English and Spanish',
                    style: kContentTextStyle,

                ),
                pw.Bullet(
                    text: 'HTML, CSS and Javascript',
                    style: kContentTextStyle,
                ),
                //
              ]
          ),
        ),

      ),
    );

    return saveDocument(name: 'Template11.pdf', pdf: pdf);

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