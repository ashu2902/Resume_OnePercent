import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template6 {
  static final kSubTitleTextStyle = pw.TextStyle(
    fontSize: 25,
  );
  static final kNormalTextStyle = pw.TextStyle(
    fontSize: 15,
    color: PdfColors.black,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 20,
    fontWeight: pw.FontWeight.bold,
    color: PdfColors.lightBlueAccent,
  );

  static Future<File> generateTemplate() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Row(children: [
          pw.Flexible(
            flex: 2,
            child: pw.Expanded(
              child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.stretch,
                  children: [
                    //Name
                    pw.Container(
                      child: pw.Text(
                        'Jason M.Bourassa',
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    //Job Title
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Text(
                        'Front End developer',
                        style: kSubTitleTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 30),
                    //Profile
                    pw.Container(
                      child: pw.Text(
                        'Profile',
                        style: kTitleTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      width: 300,
                      child: pw.Text(
                        'Lorem ipsum dolor sit amet, ' +
                            'consectetur adipiscing elit, ' +
                            'sed do eiusmod tempor incididunt ' +
                            'ut labore et dolore magna aliqua. ' +
                            'Ut enim ad minim veniam, quis nostrud',
                        style: kNormalTextStyle,
                        maxLines: 5,
                      ),
                    ),
                    pw.SizedBox(height: 30),
                    //Experience
                    pw.Container(
                      child: pw.Text(
                        'Experience',
                        style: kTitleTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Container(
                        width: 300,
                        child: pw.Text(
                          'Sample Title - 1' +
                              '\n' +
                              'Sample Organization - 1' +
                              '\n' +
                              'Date - 01-02-20XX',
                          style: kNormalTextStyle,
                        ),
                      ),
                    ),
                    pw.Container(
                      child: pw.Bullet(
                        text: 'Notable Achievement/Responsibility',
                        style: kNormalTextStyle,
                      ),
                    ),
                    pw.Container(
                      child: pw.Bullet(
                        text: 'Notable Achievement/Responsibility',
                        style: kNormalTextStyle,
                      ),
                    ),
                    pw.Container(
                      child: pw.Bullet(
                        text: 'Notable Achievement/Responsibility',
                        style: kNormalTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Container(
                        width: 300,
                        child: pw.Text(
                          'Sample Title - 2' +
                              '\n' +
                              'Sample Organization - 2' +
                              '\n' +
                              'Date - 01-02-20XX',
                          style: kNormalTextStyle,
                        ),
                      ),
                    ),
                    pw.Container(
                      child: pw.Bullet(
                        text: 'Notable Achievement/Responsibility',
                        style: kNormalTextStyle,
                      ),
                    ),
                    pw.Container(
                      child: pw.Bullet(
                        text: 'Notable Achievement/Responsibility',
                        style: kNormalTextStyle,
                      ),
                    ),
                    pw.Container(
                      child: pw.Bullet(
                        text: 'Notable Achievement/Responsibility',
                        style: kNormalTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 30),
                    //Education
                    pw.Container(
                      child: pw.Text(
                        'Experience',
                        style: kTitleTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Text(
                        'Associate of Computer Science - Santa Maria University' +
                            '\n' +
                            'Sep 2012 - Sep2016',
                        style: kNormalTextStyle.copyWith(
                            fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                    pw.Container(
                        child: pw.Text(
                      'Graduated with highest honor',
                      style: kNormalTextStyle.copyWith(color: PdfColors.grey),
                    )),
                  ]),
            ),
          ),
          pw.Flexible(
            flex: 1,
            child: pw.Expanded(
              child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    //Details
                    pw.Container(
                      child: pw.Text('Details', style: kTitleTextStyle),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                        child: pw.Text(
                      '4670 Garret Street' +
                          '\n' +
                          'Philadelphia, US' +
                          '\n' +
                          'Tel 123456789',
                      style: kNormalTextStyle,
                    )),
                    pw.Container(
                        child: pw.Text(
                      'example@example.com',
                      style: kNormalTextStyle.copyWith(
                          color: PdfColors.lightBlueAccent),
                    )),
                    pw.SizedBox(height: 30),
                    pw.Container(
                        child: pw.Text(
                      'Professional Skills',
                      style: kTitleTextStyle.copyWith(fontSize: 17),
                    )),
                    pw.SizedBox(height: 10),
                    pw.Container(
                        child: pw.Text(
                      'HTML' +
                          '\n' +
                          'CSS' +
                          '\n' +
                          'JavaScript' +
                          '\n' +
                          'Bootstrap',
                      style: kNormalTextStyle,
                    )),
                    //Project Management
                    pw.SizedBox(height: 30),
                    pw.Container(
                        child: pw.Text(
                      'Project Management',
                      style: kTitleTextStyle.copyWith(fontSize: 17),
                    )),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Text(
                        'Jira' + '\n' + 'Slack' + '\n' + 'Trello',
                        style: kNormalTextStyle,
                      ),
                    ),
                    //Languages
                    pw.SizedBox(height: 30),
                    pw.Container(
                        child: pw.Text(
                      'Languages',
                      style: kTitleTextStyle,
                    )),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Text(
                        'English' + '\n' + 'Hindi',
                        style: kNormalTextStyle,
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );

    return saveDocument(name: 'template6.pdf', pdf: pdf);
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
