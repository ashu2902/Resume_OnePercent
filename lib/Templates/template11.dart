import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart' as pw;

class Template11 {
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
  static Future<File> generateTemplate(
    String name,
    String address,
    String phoneNo,
    String email,
    String personalStatement,
    String company1,
    String jobTitle1,
    String date1,
    List<String> notableAchievements1,
    String company2,
    String jobTitle2,
    String date2,
    List<String> notableAchievements2,
    String institutionName,
    String courseName,
    String educationNotableAchievement,
    String skill1,
    String skill2,
    String skill3,
  ) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Expanded(
          child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                //Name, Address and About
                pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.center,
                    children: [
                      pw.Container(
                        child: pw.Text(
                          name.toUpperCase(),
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
                          address + '\n' + phoneNo + '\n' + email,
                          style: pw.TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      pw.SizedBox(height: 10),
                      pw.Container(
                        child: pw.Text(
                          personalStatement,
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
                    ]),
                pw.SizedBox(height: 10),
                //Professional Experience
                pw.Container(
                  child: pw.Text(
                    'Professional Experience'.toUpperCase(),
                    style: kTitleTextStyle,
                  ),
                ),
                pw.SizedBox(height: 10),
                //Company name
                pw.Container(
                  child: pw.Text(
                    company1,
                    style: kSubTitleTextStyle,
                  ),
                ),
                //Position
                pw.Container(
                  child: pw.Text(jobTitle1,
                      style: kSubTitleTextStyle.copyWith(
                          fontWeight: pw.FontWeight.normal)),
                ),
                //Achievements and responsibility
                pw.Bullet(
                  text: notableAchievements1[0],
                  style: kContentTextStyle,
                ),
                pw.Bullet(
                  text: notableAchievements1[1],
                  style: kContentTextStyle,
                ),
                pw.Bullet(
                  text: notableAchievements1[2],
                  style: kContentTextStyle,
                ),
                //Company name
                pw.Container(
                  child: pw.Text(
                    company2,
                    style: kSubTitleTextStyle,
                  ),
                ),
                //Position
                pw.Container(
                  child: pw.Text(jobTitle2,
                      style: kSubTitleTextStyle.copyWith(
                          fontWeight: pw.FontWeight.normal)),
                ),
                //Achievements and responsibility
                pw.Bullet(
                  text: notableAchievements2[0],
                  style: kContentTextStyle,
                ),
                pw.Bullet(
                  text: notableAchievements2[1],
                  style: kContentTextStyle,
                ),
                pw.Bullet(
                  text: notableAchievements2[2],
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
                pw.SizedBox(height: 10),
                //Name of Institution
                pw.Container(
                  child: pw.Text(
                    institutionName,
                    style: kSubTitleTextStyle,
                  ),
                ),
                //Degree
                pw.Container(
                  child: pw.Text(
                    courseName,
                    style: pw.TextStyle(
                      fontStyle: pw.FontStyle.italic,
                      fontSize: 18,
                    ),
                  ),
                ),
                //Notable Achievement
                pw.Bullet(
                  text: educationNotableAchievement,
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
                  text: skill1,
                  style: kContentTextStyle,
                ),
                pw.Bullet(
                  text: skill2,
                  style: kContentTextStyle,
                ),
                pw.Bullet(
                  text: skill3,
                  style: kContentTextStyle,
                ),
                //
              ]),
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
