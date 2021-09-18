import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/BusinessCardTemplates/Constants.dart';

class CardTemplate3 {
  static pw.Container TextContainer({String? text, pw.TextStyle? style}) {
    return pw.Container(
      child: pw.Text(
        text!,
        style: style!,
      ),
    );
  }

  static String getInitials(String name){
    if(name.isNotEmpty){
      return name.substring(0, 1);
    }
    return '';
  }

  static pw.Document generateCardText3(
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
        color: PdfColors.grey300,
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.stretch,
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.end,
              children: [
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 5.0, top: 5.0),
                  child: pw.Container(
                    height: 25,
                    width: 25,
                    decoration: pw.BoxDecoration(
                      border: pw.Border.all(
                        color: PdfColors.grey800,
                        width: 2.0,
                      ),
                    ),
                    child: pw.Center(
                      child: pw.Text(
                        getInitials(name),
                        style: pw.TextStyle(
                          fontSize: 20,
                          color: PdfColors.grey800,
                        )
                      ),
                    ),
                  ),
                )
              ],
            ),
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              children: [
                pw.Padding(
                  padding: pw.EdgeInsets.only(left: 8.0),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      TextContainer(
                        text: name,
                        style: pw.TextStyle(
                          fontSize: 8,
                          fontWeight: pw.FontWeight.bold,
                        )
                      ),
                      TextContainer(
                          text: jobTitle,
                          style: pw.TextStyle(
                            fontSize: 6,
                          )
                      ),
                    ]
                  ),
                )
              ],
            ),
            pw.SizedBox(height: 15),

            pw.Padding(
              padding: pw.EdgeInsets.only(left: 8.0),
              child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Row(
                      children: [
                        TextContainer(
                          text: 'P',
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 6,
                          )
                        ),
                        pw.SizedBox(width: 5.0),
                        TextContainer(
                            text: phone,
                            style: pw.TextStyle(
                              fontSize: 6,
                            )
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        TextContainer(
                            text: 'E',
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 6,
                            )
                        ),
                        pw.SizedBox(width: 5.0),
                        TextContainer(
                            text: email,
                            style: pw.TextStyle(
                              fontSize: 6,
                            )
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        TextContainer(
                            text: 'L',
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 6,
                            )
                        ),
                        pw.SizedBox(width: 5.0),
                        pw.UrlLink(
                          child: pw.Text(
                            linkToCompany,
                            style: kUrlTextStyle.copyWith(color: PdfColors.black, fontStyle: pw.FontStyle.normal,fontSize: 6.0),
                          ),
                          destination: linkToCompany,
                        ),
                      ],
                    ),
                  ],
              ),
            )
          ],
        ),
      ),
    ));
    return pdf;
  }
}
