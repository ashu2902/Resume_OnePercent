import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/BusinessCardTemplates/Constants.dart';

class CardTemplate6 {
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

  static pw.Document generateCardText6(
    name,
    jobTitle,
    linkToCompany,
    email,
    phone,
  ) {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.roll80.copyWith(
            marginBottom: 0, marginTop: 0, marginLeft: 0, marginRight: 0),
        build: (context) => pw.Container(
          height: 100,
          color: PdfColors.orange50,
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Padding(
                  padding: pw.EdgeInsets.only(right: 5.0),
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.stretch,
                      children: [
                        pw.Container(
                          alignment: pw.Alignment.centerRight,
                          child: pw.Text(name.toString().toUpperCase(),
                              style: pw.TextStyle(
                                fontSize: 14,
                                color: PdfColors.blueGrey900,
                                lineSpacing: 1.5,
                              )),
                        ),
                        pw.Container(
                          alignment: pw.Alignment.centerRight,
                          child: pw.Text(
                            jobTitle,
                            style: pw.TextStyle(
                              fontSize: 10,
                              color: PdfColors.blueGrey900,
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                pw.Container(
                  width: 60,
                  height: 15,
                  color: PdfColors.blueGrey500,
                  child: pw.Padding(
                    padding: pw.EdgeInsets.only(right: 2.0,top: 1.0),
                    child:  pw.Text('Contact',
                        textAlign: pw.TextAlign.right,
                        style: pw.TextStyle(
                          color: PdfColors.blueGrey50,
                          fontSize: 9,
                          fontWeight: pw.FontWeight.bold,
                        )),
                  )
                ),
                pw.SizedBox(height: 10),
                pw.Padding(
                  padding: pw.EdgeInsets.only(left: 8.0),
                  child: pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.end,
                    children: [
                      pw.Row(children: [
                        TextContainer(
                            text: 'Email:',
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 8,
                              color: PdfColors.blueGrey500,
                            )),
                        pw.SizedBox(width: 5.0),
                        TextContainer(
                            text: email,
                            style: pw.TextStyle(
                              fontSize: 8,
                              color: PdfColors.blueGrey500,
                            )),
                      ]),
                      pw.SizedBox(height: 5.0),
                      pw.Row(children: [
                        TextContainer(
                            text: 'Phone:',
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 8,
                              color: PdfColors.blueGrey500,
                            )),
                        pw.SizedBox(width: 5.0),
                        TextContainer(
                            text: phone,
                            style: pw.TextStyle(
                              fontSize: 8,
                              color: PdfColors.blueGrey500,
                            )),
                      ]),
                      pw.SizedBox(height: 5.0),
                      pw.Row(children: [
                        TextContainer(
                            text: 'Link:',
                            style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 8,
                              color: PdfColors.blueGrey500,
                            )),
                        pw.SizedBox(width: 5.0),
                        pw.UrlLink(
                          child: pw.Text(
                            linkToCompany,
                            style: kUrlTextStyle.copyWith(
                                color: PdfColors.blueGrey500,
                                fontStyle: pw.FontStyle.normal,
                                fontSize: 8),
                          ),
                          destination: linkToCompany,
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    return pdf;
  }
}
