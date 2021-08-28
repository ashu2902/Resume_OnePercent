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

  static pw.Document generateTemplate(
    name,
    about,
    jobTitle1,
    organisation1,
    expStartDate1,
    expSummary1,
    jobTitle2,
    organisation2,
    expStartDate2,
    expSummary2,
    course1,
    edName1,
    edDate1,
    edSummary1,
    address,
    phone,
    email,
    skill1,
    skill2,
    skill3,
    lang1,
    lang2,
  ) {
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
                        '$name',
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
                        '$about',
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
                          '$jobTitle1' +
                              '\n' +
                              '$organisation1' +
                              '\n' +
                              'Date - $expStartDate1',
                          style: kNormalTextStyle,
                        ),
                      ),
                    ),
                    pw.Container(
                      child: pw.Bullet(
                        text: '$expSummary1',
                        style: kNormalTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Container(
                        width: 300,
                        child: pw.Text(
                          '$jobTitle2' +
                              '\n' +
                              '$organisation2' +
                              '\n' +
                              'Date - $expStartDate2',
                          style: kNormalTextStyle,
                        ),
                      ),
                    ),
                    pw.Container(
                      child: pw.Bullet(
                        text: '$expSummary2',
                        style: kNormalTextStyle,
                      ),
                    ),

                    pw.SizedBox(height: 30),
                    //Education
                    pw.Container(
                      child: pw.Text(
                        'Education',
                        style: kTitleTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Text(
                        '$course1 - $edName1' + '\n' + '$edDate1 ',
                        style: kNormalTextStyle.copyWith(
                            fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                    pw.Container(
                        child: pw.Text(
                      '$edSummary1',
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
                      '$address' + '\n' + 'Tel $phone',
                      style: kNormalTextStyle,
                    )),
                    pw.Container(
                        child: pw.Text(
                      '$email',
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
                      '$skill1' + '\n' + '$skill2' + '\n' + '$skill3',
                      style: kNormalTextStyle,
                    )),
                    //Project Management
                    pw.SizedBox(height: 30),

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
                        '$lang1' + '\n' + '$lang2',
                        style: kNormalTextStyle,
                      ),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );

    return pdf;
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
