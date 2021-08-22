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
    String date,
    List<String> responsibilities,
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
                    date,
                    style: kContentTextStyle.copyWith(
                        color: PdfColors.lightBlueAccent),
                  ),
                ),
                pw.Container(
                  child: pw.Text(
                    responsibilities[0],
                    style: kContentTextStyle,
                  ),
                ),
                pw.Container(
                  child: pw.Text(
                    responsibilities[1],
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

  static Future<File> generateTemplate(
    String name,
    String address,
    String phoneNo,
    String email,
    String professionalSummary,
    String jobTitle1,
    String company1,
    String date1,
    List<String> responsibilities1,
    String jobCity1,
    String jobTitle2,
    String company2,
    String date2,
    List<String> responsibilities2,
    String jobCity2,
    String institution,
    String eduDate,
    String eduNotableAchievement,
    String eduLocation,
    String honorInstitution,
    String honorDate,
    String honorNotableAchievement,
    String honorLocation,
  ) async {
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
                professionalSummary,
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
                jobTitle1, company1, date1, responsibilities1, jobCity1),
            createEmploymentData(
                jobTitle2, company2, date2, responsibilities2, jobCity2),
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
                institution, eduDate, eduNotableAchievement, eduLocation),
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
            createEducationData(honorInstitution, honorDate,
                honorNotableAchievement, honorLocation),
          ],
        ),
      ),
    );

    return saveDocument(name: 'template13.pdf', pdf: pdf);
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
