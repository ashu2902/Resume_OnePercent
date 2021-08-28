import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template13 {
  static final kContentTextStyle = pw.TextStyle(
    fontSize: 18,
  );
  static final kTitleTextStyle = pw.TextStyle(
    fontSize: 20,
    fontWeight: pw.FontWeight.bold,
  );

  static pw.Expanded createEmploymentData(
    String jobTitle,
    String companyName,
    String compStartDate,
    String compEndDate,
    String summary,
    String city,
  ) {
    return pw.Expanded(
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Flexible(
            flex: 2,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Container(
                  child: pw.Text(
                    jobTitle + ', ' + companyName,
                    style: kContentTextStyle.copyWith(
                        fontWeight: pw.FontWeight.bold),
                  ),
                ),
                pw.Container(
                  child: pw.Text(
                    compStartDate + ' - ' + compEndDate,
                    style: kContentTextStyle.copyWith(
                        color: PdfColors.lightBlueAccent),
                  ),
                ),
                pw.Container(
                  child: pw.Text(
                    summary,
                    style: kContentTextStyle,
                  ),
                ),
              ],
            ),
          ),
          pw.Flexible(
            flex: 1,
            child: pw.Container(
              alignment: pw.Alignment.topRight,
              child: pw.Text(
                city,
                style: kContentTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static pw.Expanded createEducationData(
    String institution,
    String date,
    String notableAchievement,
    String location,
  ) {
    return pw.Expanded(
      child: pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Flexible(
            flex: 2,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                //Institution
                pw.Container(
                  child: pw.Text(
                    institution,
                    style: kContentTextStyle.copyWith(
                        fontWeight: pw.FontWeight.bold),
                  ),
                ),
                //Date
                pw.Container(
                  child: pw.Text(
                    date,
                    style: kContentTextStyle.copyWith(
                      color: PdfColors.lightBlueAccent,
                    ),
                  ),
                ),
                //Notable Achievement
                pw.Container(
                  child: pw.Text(
                    notableAchievement,
                    style: kContentTextStyle,
                  ),
                ),
              ],
            ),
          ),
          pw.Flexible(
            flex: 1,
            child: pw.Container(
              alignment: pw.Alignment.topRight,
              child: pw.Text(
                location,
                style: kContentTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static pw.Document generateTemplate(
    name,
    address,
    phoneNo,
    email,
    about,
    jobTitle1,
    company1,
    compStartDate1,
    compEndDate1,
    jobSummary1,
    compLocation1,
    jobTitle2,
    company2,
    compStartDate2,
    compEndDate2,
    jobSummary2,
    compLocation2,
    instName1,
    edDate1,
    edSummary1,
    edLocation1,
    instName2,
    edDate2,
    edSummary2,
    edLocation2,
  ) {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            //Name
            pw.Container(
              child: pw.Text(
                name,
                style: pw.TextStyle(
                  color: PdfColors.lightBlueAccent,
                  fontSize: 30,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ),
            //Address, phone number, and email
            pw.Container(
              child: pw.Text(
                address + ', ' + phoneNo + '\n' + email,
                style: kContentTextStyle,
              ),
            ),
            pw.SizedBox(height: 30),
            //professional summary
            pw.Container(
              child: pw.Text(
                'Professional Summary'.toUpperCase(),
                style: kTitleTextStyle,
                maxLines: 3,
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Divider(thickness: 2),
            pw.SizedBox(height: 10),
            pw.Container(
              child: pw.Text(
                about,
                style: kContentTextStyle,
              ),
            ),
            pw.SizedBox(height: 20),
            //Employment History
            pw.Container(
              child: pw.Text(
                'Employment History'.toUpperCase(),
                style: kTitleTextStyle,
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Divider(thickness: 2),
            pw.SizedBox(height: 10),
            //Employment Summary
            createEmploymentData(
                jobTitle1, company1, compStartDate1, compEndDate1, jobSummary1, compLocation1),
            createEmploymentData(
                jobTitle2, company2, compStartDate2, compEndDate2, jobSummary2, compLocation2),
            pw.SizedBox(height: 20),
            //Education
            pw.Container(
              child: pw.Text(
                'Education'.toUpperCase(),
                style: kTitleTextStyle,
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Divider(thickness: 2),
            pw.SizedBox(height: 10),
            createEducationData(
                instName1, edDate1, edSummary1, edLocation1),
            pw.SizedBox(height: 20),
            //Honors
            pw.Container(
              child: pw.Text(
                'Honors'.toUpperCase(),
                style: kTitleTextStyle,
              ),
            ),
            pw.SizedBox(height: 10),
            pw.Divider(thickness: 2),
            pw.SizedBox(height: 10),
            createEducationData(instName2, edDate2,
                edSummary2, edLocation2),
          ],
        ),
      ),
    );

    return pdf;
  }
}
