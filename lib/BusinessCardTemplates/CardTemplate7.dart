import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/BusinessCardTemplates/Constants.dart';

class CardTemplate7 {
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

  static pw.Document generateCardText7(
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
          color: PdfColors.grey900,
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Container(
                  height: 90,
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.center,
                    crossAxisAlignment: pw.CrossAxisAlignment.stretch,
                    children: [
                      pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.center,
                        children: [
                          pw.Container(
                            child: pw.Text(
                              name.toString().toUpperCase(),
                              style: pw.TextStyle(
                                  fontSize: 15,
                                  lineSpacing: 1.5,
                                  color: PdfColors.white,
                              ),
                            ),
                          ),
                          pw.SizedBox(height: 5),
                          pw.Container(
                            child: pw.Text(
                              jobTitle,
                              style: pw.TextStyle(
                                  fontSize: 10,
                                  lineSpacing: 1.5,
                                color: PdfColors.white,

                              ),
                            ),
                          ),
                          pw.SizedBox(height: 5),
                          pw.Container(
                            height: 2,
                            width: 25,
                            color: PdfColors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                pw.Container(
                  height: 10,
                  color: PdfColors.orange50,
                  child: pw.Padding(
                    padding: pw.EdgeInsets.symmetric(horizontal: 5.0),
                    child: pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Container(
                          child: pw.Text(
                            phone,
                            style: pw.TextStyle(
                              fontSize: 5,
                            ),
                          ),
                        ),
                        pw.Container(
                          child: pw.Text(
                            email,
                            style: pw.TextStyle(
                              fontSize: 5,
                            ),
                          ),
                        ),
                        pw.UrlLink(
                          child: pw.Text(
                            linkToCompany,
                            style: kUrlTextStyle.copyWith(
                                color: PdfColors.blue,
                                fontStyle: pw.FontStyle.normal,
                                fontSize: 5),
                          ),
                          destination: linkToCompany,
                        ),
                      ],
                    ),
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
