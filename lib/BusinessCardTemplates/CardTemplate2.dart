
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/BusinessCardTemplates/Constants.dart';

class CardTemplate2 {
  static pw.Container TextContainer({String? text, pw.TextStyle? style}) {
    return pw.Container(
      child: pw.Text(
        text!,
        style: style!,
      ),
    );
  }

  static pw.Document generateCardText2(
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
        color: PdfColors.grey400,
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.stretch,
          mainAxisAlignment: pw.MainAxisAlignment.end,
          children: [
            pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
              children: [
                pw.Container(
                  margin: pw.EdgeInsets.all(0.0),
                  child: pw.Stack(alignment: pw.Alignment.center, children: [
                    pw.Container(
                        margin: pw.EdgeInsets.only(
                          bottom: 10.0,
                        ),
                        height: 45,
                        width: 45,
                        decoration: pw.BoxDecoration(
                          shape: pw.BoxShape.circle,
                          color: PdfColors.orangeAccent,
                        )
                    ),
                    pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.center,
                        children: [
                          TextContainer(
                            text: name,
                            style: pw.TextStyle(
                                fontSize: 14,
                                fontWeight: pw.FontWeight.bold,
                                color: PdfColors.white),
                          ),
                          TextContainer(
                              text: jobTitle,
                              style: kCardTextStyle.copyWith(
                                  fontSize: 10,
                              )),
                        ]),
                  ]),
                ),
              ],
            ),
            pw.Padding(
              padding: pw.EdgeInsets.only(left: 8.0, bottom: 4.0),
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                crossAxisAlignment: pw.CrossAxisAlignment.end,
                children: [
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Container(
                        child: pw.Text(
                          email,
                          style: kCardTextStyle.copyWith(color: PdfColors.grey800, fontWeight: pw.FontWeight.bold, fontSize: 8.0),
                        ),
                      ),
                      pw.Container(
                        width: 100,
                        child: pw.Text(
                          phone,
                          style: kCardTextStyle.copyWith(color: PdfColors.grey800, fontWeight: pw.FontWeight.bold, fontSize: 8.0),
                        ),
                      )
                    ],
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.only(right: 8.0),
                    child: pw.UrlLink(
                      child:  pw.Text(
                        linkToCompany,
                        style: kUrlTextStyle.copyWith(color: PdfColors.grey800, fontStyle: pw.FontStyle.normal, fontWeight: pw.FontWeight.bold),
                      ),
                      destination: linkToCompany,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
    return pdf;
  }
}
