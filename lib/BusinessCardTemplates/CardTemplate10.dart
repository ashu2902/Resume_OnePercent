import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/BusinessCardTemplates/Constants.dart';

class CardTemplate10 {
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

  static final kTextColor = PdfColors.blueGrey800;

  static pw.Document generateCardText10(
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
          color: PdfColors.pink50,
          child: pw.Padding(
            padding: pw.EdgeInsets.all(8.0),
            child: pw.Container(
              color: PdfColors.white,
              child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: pw.CrossAxisAlignment.center,
                  children: [
                pw.Container(
                    child: pw.Text(name.toUpperCase(),
                        style: pw.TextStyle(
                          fontSize: 14,
                          color: kTextColor,
                        ),),),
                pw.Container(
                    child: pw.Text(jobTitle,
                        style: pw.TextStyle(
                          fontSize: 10,
                          color: kTextColor,
                        ),),),
                pw.SizedBox(height: 10),
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  children: [
                    pw.Row(children: [
                      TextContainer(
                          text: 'E:',
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 8,
                            color: kTextColor,


                          )),
                      pw.SizedBox(width: 5.0),
                      TextContainer(
                          text: email,
                          style: pw.TextStyle(
                            fontSize: 8,
                            color: kTextColor,


                          )),
                    ]),
                    pw.SizedBox(width: 20.0),
                    pw.Row(children: [
                      TextContainer(
                          text: 'P:',
                          style: pw.TextStyle(
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 8,
                            color: kTextColor,


                          )),
                      pw.SizedBox(width: 5.0),
                      TextContainer(
                          text: phone,
                          style: pw.TextStyle(
                            fontSize: 8,
                            color: kTextColor,

                          )),
                    ]),
                  ]
                ),

                pw.SizedBox(height: 5.0),
                pw.UrlLink(
                  child: pw.Text(
                    linkToCompany,
                    style: kUrlTextStyle.copyWith(
                        fontStyle: pw.FontStyle.normal,
                        fontSize: 10,
                        lineSpacing: 2,
                    ),
                  ),
                  destination: linkToCompany,
                ),
              ]),
            ),
          ),
        ),
      ),
    );
    return pdf;
  }
}
