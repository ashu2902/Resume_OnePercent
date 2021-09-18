import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/BusinessCardTemplates/Constants.dart';

class CardTemplate5 {
  static pw.Container TextContainer({String? text, pw.TextStyle? style}) {
    return pw.Container(
      child: pw.Text(
        text!,
        style: style!,
      ),
    );
  }

  static String getFirstAndLastName(String name) {
    if (name.indexOf(' ') != -1) {
      var firstName = name.substring(0, name.indexOf(' '));
      var lastName = name.substring(name.indexOf(' ') + 1, name.length);
      return '$firstName\n$lastName';
    }
    return name;
  }

  static pw.Document generateCardText5(
    name,
    jobTitle,
    linkToCompany,
    email,
    phone,
  ) {
    final pdf = pw.Document();
    pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.roll80.copyWith(
          marginBottom: 0, marginTop: 0, marginLeft: 0, marginRight: 0),
      build: (context) => pw.Container(
        height: 100,
        child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            child: pw.Stack(children: [
              pw.Row(mainAxisAlignment: pw.MainAxisAlignment.end, children: [
                pw.Container(
                    decoration: pw.BoxDecoration(
                        color: PdfColors.lightBlue100,
                        borderRadius: pw.BorderRadius.circular(5.0)),
                    width: 150,
                    height: 90),
              ]),
              pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                    pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.center,
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.Container(
                              child: pw.Text(getFirstAndLastName(name),
                                  textAlign: pw.TextAlign.right,
                                  style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 12,
                                  ))),
                          TextContainer(
                              text: jobTitle,
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 10,
                              )),
                        ]),
                    pw.SizedBox(width: 15),
                    pw.Container(
                      height: 60,
                      width: 1,
                      color: PdfColors.black,
                    ),
                    pw.SizedBox(width: 5),
                    pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.center,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          TextContainer(
                              text: phone,
                              style: pw.TextStyle(
                                fontSize: 8,
                                color: PdfColors.grey600,
                              )),
                          pw.SizedBox(height: 5),
                          pw.Container(
                              width: 100,
                              child: pw.Text(email,
                                  style: pw.TextStyle(
                                    fontSize: 8,
                                    color: PdfColors.grey600,
                                  ))),
                          pw.SizedBox(height: 5),
                          pw.UrlLink(
                            child: pw.Text(
                              linkToCompany,
                              style: kUrlTextStyle.copyWith(
                                  color: PdfColors.grey600,
                                  fontStyle: pw.FontStyle.normal,
                                  fontSize: 8.0),
                            ),
                            destination: linkToCompany,
                          ),
                        ]),
                  ]),
            ])),
      ),
    ));
    return pdf;
  }
}
