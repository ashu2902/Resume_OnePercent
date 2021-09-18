import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/BusinessCardTemplates/Constants.dart';

class CardTemplate9 {
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

  static pw.Document generateCardText9(
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
          child: pw.Stack(children: [
            pw.Container(
              height: 100,
              width: 50,
              color: PdfColors.blueGrey800,
            ),
            pw.Padding(
              padding: pw.EdgeInsets.only(left: 10, top: 10),
              child: pw.Container(
                  color: PdfColors.white,
                  width: 200,
                  height: 40,
                  child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 5.0),
                          child: pw.Container(
                            child: pw.Text(
                              name.toUpperCase(),
                              style: pw.TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        pw.SizedBox(height: 2),
                        pw.Padding(
                          padding: pw.EdgeInsets.only(left: 5.0),
                          child:pw.Container(
                            child: pw.Text(
                              jobTitle,
                              style: pw.TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          )
                        ),
                        pw.SizedBox(height: 5),
                        pw.Container(
                          height: 2,
                          width: 80,
                          color: PdfColors.blueGrey800,
                        )
                      ])),
            ),
            pw.Padding(
              padding: pw.EdgeInsets.only(right: 10.0, bottom: 10.0),
              child: pw.Container(
                  height: 100,
                  child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.end,
                      crossAxisAlignment: pw.CrossAxisAlignment.stretch,
                      children: [
                        pw.Container(
                          alignment: pw.Alignment.bottomRight,
                          child: pw.Text(
                            phone,
                            style: pw.TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                        pw.Container(
                          alignment: pw.Alignment.bottomRight,
                          child: pw.Text(
                            email,
                            style: pw.TextStyle(
                              fontSize: 8,
                            ),
                          ),
                        ),
                        pw.Container(
                          alignment: pw.Alignment.bottomRight,
                          child: pw.UrlLink(
                            child: pw.Text(
                              linkToCompany,
                              style: kUrlTextStyle.copyWith(
                                  color: PdfColors.blue,
                                  fontStyle: pw.FontStyle.normal,
                                  fontSize: 8),
                            ),
                            destination: linkToCompany,
                          ),
                        )
                      ])),
            )
          ]),
        ),
      ),
    );
    return pdf;
  }
}
