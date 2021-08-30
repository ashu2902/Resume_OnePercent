import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template14 {
  static pw.Document generateText(
    String firstName,
    String currentJobTitle,
    String address,
    String phoneNo,
    String email,
    var expertise,
    String awardName,
    String awardCategory,
    String awardOrganization,
    String awardDate,
    String facebook,
    String linkedIn,
    String personalStatement,
    List jobTitles,
    List jobCompanies,
    List jobDates,
    var notableAchievements1, //for company 1
    var notableAchievements2, //for company 2
    String degree,
    String eduDate1,
    String institution,
    String educationNotableAchievement1,
    String course,
    String eduDate2,
    String institution2,
    String educationNotableAchievement2,
  ) {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Row(children: [
          pw.Flexible(
            flex: 1,
            child: pw.Expanded(
              child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Container(
                      color: PdfColors.grey100,
                      height: 725,
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Container(
                                child: pw.Column(children: [
                              pw.Text(firstName.toUpperCase(),
                                  style: pw.TextStyle(
                                      fontSize: 27,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.black)),
                              pw.SizedBox(height: 10),
                              pw.Text(
                                currentJobTitle.toUpperCase(),
                                style: pw.TextStyle(
                                    fontSize: 15, color: PdfColors.black),
                              )
                            ])),
                            pw.SizedBox(height: 30),
                            pw.Container(
                              child: pw.Text('Contact',
                                  style: pw.TextStyle(
                                      fontSize: 20,
                                      fontWeight: pw.FontWeight.bold,
                                      color: PdfColors.black)),
                            ),
                            pw.Container(width: 50, child: pw.Divider()),
                            pw.SizedBox(height: 10),
                            pw.Container(
                              child: pw.Text(address,
                                  style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold)),
                            ),
                            pw.SizedBox(height: 10),

                            pw.Container(
                              child: pw.Text(
                                email,
                              ),
                            ),
                            pw.SizedBox(height: 30),
                            pw.Container(
                                child: pw.Text('Expertise',
                                    style: pw.TextStyle(
                                        fontSize: 20,
                                        fontWeight: pw.FontWeight.bold,
                                        color: PdfColors.black))),
                            pw.Container(width: 50, child: pw.Divider()),
                            pw.SizedBox(height: 10),
                            pw.Container(child: pw.Text(expertise)),
                            //Project Management
                            pw.SizedBox(height: 30),

                            pw.SizedBox(height: 10),

                            //Languages
                            pw.SizedBox(height: 30),

                            pw.SizedBox(height: 10),
                          ]),
                    )
                  ]),
            ),
          ),
          pw.SizedBox(width: 20),
          pw.Flexible(
              flex: 2,
              child: pw.Expanded(
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Container(
                      child: pw.Text('Statement',
                          style: pw.TextStyle(
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black)),
                    ),
                    pw.Container(width: 70, child: pw.Divider()),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      width: 300,
                      child: pw.Text(
                        personalStatement,
                      ),
                    ),
                    pw.SizedBox(height: 30),
                    //Experience
                    pw.Container(
                      child: pw.Text(
                        'Work Experience',
                        style: pw.TextStyle(
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black,
                        ),
                      ),
                    ),
                    pw.Container(width: 70, child: pw.Divider()),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Container(
                        width: 300,
                        child: pw.Text(
                            jobTitles[0] +
                                '\n' +
                                jobCompanies[0] +
                                '\n' +
                                jobDates[0],
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                            )),
                      ),
                    ),
                    pw.Container(
                      child: pw.Bullet(
                        text: notableAchievements1,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Container(
                        width: 300,
                        child: pw.Text(
                            jobTitles[1] +
                                '\n' +
                                jobCompanies[1] +
                                '\n' +
                                jobDates[1],
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                            )),
                      ),
                    ),
                    pw.Container(
                      child: pw.Bullet(
                        text: notableAchievements2,
                      ),
                    ),
                    pw.SizedBox(height: 10),

                    pw.SizedBox(height: 30),
                    //Education
                    pw.Container(
                      child: pw.Text(
                        'Education',
                        style: pw.TextStyle(
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                          color: PdfColors.black,
                        ),
                      ),
                    ),
                    pw.Container(width: 70, child: pw.Divider()),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Text(degree + '\n' + eduDate1,
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    ),
                    pw.Container(
                        child: pw.Text(
                      institution,
                    )),
                    pw.Container(
                        child: pw.Text(
                      educationNotableAchievement1,
                    )),
                    pw.SizedBox(height: 10),
                    pw.Container(
                      child: pw.Text(course + '\n' + eduDate2,
                          style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                    ),
                    pw.Container(
                        child: pw.Text(
                      institution2,
                    )),
                    pw.Container(
                        child: pw.Text(
                      educationNotableAchievement2,
                    )),
                  ],
                ),
              ))
        ]),
      ),
    );

    return pdf;
  }
}
