import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template35 {
  static final kSubTitleTextStyle = pw.TextStyle(
    fontSize: 20,
  );
  static final kNormalTextStyle = pw.TextStyle(
    fontSize: 12,
    color: PdfColors.black,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 15,
    fontWeight: pw.FontWeight.bold,
    color: PdfColors.black,
  );

  static pw.Document generateTemplate(
      name,
      about,
      course1,
      edName1,
      edDate1,
      edSummary1,
      course2,
      edName2,
      edDate2,
      edSummary2,
      jobTitle1,
      organisation1,
      expStartDate1,
      expSummary1,
      jobTitle2,
      organisation2,
      expStartDate2,
      expSummary2,
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
                        '   $name',
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    pw.SizedBox(height: 30),
                    //Profile
                    pw.Container(
                      child: pw.Bullet(text:
                        'ABOUT ME',
                        style: kTitleTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      width: 300,
                      child: pw.Text(
                        '   $about',
                        style: kNormalTextStyle,
                        maxLines: 5,
                      ),
                    ),
                    pw.SizedBox(height: 30),
                    //Education
                    pw.Container(
                      child: pw.Bullet(text:
                        'Education',
                        style: kTitleTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Text(
                        '   $course1 - $edName1' + '\n' + '   $edDate1 ',
                        style: kNormalTextStyle.copyWith(
                            fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                    pw.Container(
                        child: pw.Text(
                          '   $edSummary1',
                          style: kNormalTextStyle.copyWith(color: PdfColors.grey),
                        )),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Text(
                        '   $course2 - $edName2' + '\n' + '   $edDate2 ',
                        style: kNormalTextStyle.copyWith(
                            fontWeight: pw.FontWeight.bold),
                      ),
                    ),
                    pw.Container(
                        child: pw.Text(
                          '   $edSummary2',
                          style: kNormalTextStyle.copyWith(color: PdfColors.grey),
                        )),
                    pw.SizedBox(height: 30),
                    //Experience
                    pw.Container(
                      child: pw.Bullet(text:
                        'Experience'.toUpperCase(),
                        style: kTitleTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Container(
                        width: 300,
                        child: pw.Text(
                          '   $jobTitle1' +
                              '\n' +
                              '   $organisation1' +
                              '\n' +
                              '   Date - $expStartDate1',
                          style: kNormalTextStyle,
                        ),
                      ),
                    ),
                    pw.Container(
                      child: pw.Text( '   $expSummary1',
                        style: kNormalTextStyle,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Container(
                        width: 300,
                        child: pw.Text(
                          '   $jobTitle2' +
                              '\n' +
                              '   $organisation2' +
                              '\n' +
                              '   Date - $expStartDate2',
                          style: kNormalTextStyle,
                        ),
                      ),
                    ),
                    pw.Container(
                      child: pw.Text( '   $expSummary2',
                        style: kNormalTextStyle,
                      ),
                    ),
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
                      child: pw.Bullet(text:
                          'PERSONAL INFO', style: kTitleTextStyle),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                        child: pw.Text(
                          '   $address' + '\n' + '   $phone',
                          style: kNormalTextStyle,
                        )),
                    pw.Container(
                        child: pw.Text(
                          '   $email',
                          style: kNormalTextStyle,
                        )),
                    pw.SizedBox(height: 30),
                    pw.Container(
                        child: pw.Bullet(text:
                          'SKILLS',
                          style: kTitleTextStyle.copyWith(fontSize: 17),
                        )),
                    pw.SizedBox(height: 10),
                    pw.Container(
                        child: pw.Text(
                          '   $skill1' + '\n' + '   $skill2' + '\n' + '   $skill3',
                          style: kNormalTextStyle,
                        )),
                    pw.SizedBox(height: 30),

                    //Languages
                    pw.Container(
                        child: pw.Bullet(text:
                          'Languages'.toUpperCase(),
                          style: kTitleTextStyle,
                        )),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Text(
                        '   $lang1' + '\n' + '   $lang2',
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
}
