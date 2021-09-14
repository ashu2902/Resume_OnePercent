import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/BusinessCardTemplates/Constants.dart';

class CardTemplate1 {
  static pw.Container TextContainer({String? text, pw.TextStyle? style}) {
    return pw.Container(
      child: pw.Text(
        text!,
        style: style!,
      ),
    );
  }


  static pw.Document generateText1(
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
        child: pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
            children: [
              pw.Expanded(
                child: pw.Container(
                  margin: pw.EdgeInsets.all(0.0),
                  color: PdfColors.deepOrangeAccent,
                  height: 200,
                  child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        TextContainer(
                          text: name,
                          style: pw.TextStyle(
                              fontSize: 12,
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.white),
                        ),
                        TextContainer(
                            text: jobTitle,
                            style: kTextStyle.copyWith(
                                fontStyle: pw.FontStyle.italic)),
                        pw.UrlLink(
                          child: pw.Padding(
                            padding: pw.EdgeInsets.symmetric(horizontal: 5.0),
                            child: pw.Text(
                              linkToCompany.toString(),
                              style: kUrlTextStyle.copyWith(color: PdfColors.black, fontStyle: pw.FontStyle.italic, fontWeight: pw.FontWeight.bold),
                            ),
                          ),
                          destination: linkToCompany,
                        ),
                      ]),
                ),
              ),
              pw.Expanded(
                child: pw.Container(
                  color: PdfColors.white,
                  child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.center,
                      children: [
                        TextContainer(
                          text: 'Contact',
                          style: kTextStyle.copyWith(
                              fontWeight: pw.FontWeight.bold,
                              color: PdfColors.black),
                        ),
                        TextContainer(
                            text: email,
                            style: kTextStyle.copyWith(
                                color: PdfColors.black)),
                        TextContainer(
                          text: phone,
                          style: kTextStyle.copyWith(color: PdfColors.black),
                        ),
                      ]),
                ),
              ),
            ]),
      ),
    ));
    return pdf;
  }
}
