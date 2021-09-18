import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/BusinessCardTemplates/Constants.dart';

class CardTemplate4 {
  static pw.Container TextContainer({String? text, pw.TextStyle? style}) {
    return pw.Container(
      child: pw.Text(
        text!,
        style: style!,
      ),
    );
  }

  static String getFirstAndLastName(String name){
    if(name.indexOf(' ') != -1){
      var firstName = name.substring(0, name.indexOf(' '));
      var lastName = name.substring(name.indexOf(' ') + 1, name.length);
      return '$firstName\n$lastName';
    }
    return name;
  }

  static pw.Document generateCardText4(
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
        decoration: pw.BoxDecoration(
          color: PdfColors.pink50,
          border: pw.Border.all(
            color: PdfColors.blue900,
            width: 8,
          )
        ),
        child: pw.Center(
          child: pw.Container(
            width: 80,
            child: pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.center,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                TextContainer(
                  text: getFirstAndLastName(name),
                  style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold,
                    fontSize: 14,
                    color: PdfColors.blue900,
                  ),
                ),
                pw.Divider(
                  color: PdfColors.blue600,
                  thickness: 1,
                  height: 4,
                ),
                TextContainer(
                  text: jobTitle,
                  style: pw.TextStyle(
                    fontSize: 10,
                    color: PdfColors.blue900,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(
                  height: 5,
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  children: [
                    TextContainer(
                        text: 'Phone:',
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 6,
                          color: PdfColors.blue900,

                        )
                    ),
                    pw.SizedBox(width: 5.0),
                    TextContainer(
                        text: phone,
                        style: pw.TextStyle(
                          fontSize: 6,
                          color: PdfColors.blue900,

                        )
                    ),
                  ],
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.start,

                  children: [
                    TextContainer(
                        text: 'Email:',
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 6,
                          color: PdfColors.blue900,

                        )
                    ),
                    pw.SizedBox(width: 5.0),
                    TextContainer(
                        text: email,
                        style: pw.TextStyle(
                          fontSize: 6,
                          color: PdfColors.blue900,

                        )
                    ),
                  ],
                ),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.start,

                  children: [
                    TextContainer(
                        text: 'Link: ',
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 6,
                          color: PdfColors.blue900,

                        )
                    ),
                    pw.SizedBox(width: 5.0),
                    pw.UrlLink(
                      child: pw.Text(
                        linkToCompany,
                        style: kUrlTextStyle.copyWith(color: PdfColors.blue900, fontStyle: pw.FontStyle.normal,fontSize: 6.0),
                      ),
                      destination: linkToCompany,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),);
    return pdf;
  }
}
