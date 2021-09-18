import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/BusinessCardTemplates/Constants.dart';

class CardTemplate8 {
  static pw.Container TextContainer({String? text, pw.TextStyle? style}) {
    return pw.Container(
      child: pw.Text(
        text!,
        style: style!,
      ),
    );
  }

  static String getInitials(String name) {
    String initials = '';
    initials += name[0];
    //this is the space between first name and last name
    int indexOfSpace = name.indexOf(' ');
    if (indexOfSpace < 0) {
      return initials;
    }
    initials += '/' + name[name.indexOf(' ') + 1];
    return initials;
  }

  static pw.Document generateCardText8(
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
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.stretch,
            children: [
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.Container(
                      height: 30,
                      width: 30,
                      color: PdfColors.orange50,
                      child: pw.Center(
                          child: pw.Text(
                            //getInitials(name),
                            getInitials(name),
                          )
                      )
                  ),
                  pw.SizedBox(height: 5),
                  pw.Container(
                    child: pw.Text(
                      name,
                      style: pw.TextStyle(
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.white,
                      )
                    )
                  )
                ]
              ),
              pw.SizedBox(height: 5.5),
              pw.Container(
                height: 45,
                color: PdfColors.white,
                child: pw.Column(
                  children: [
                    pw.SizedBox(height: 5.5),
                    pw.Container(
                      child: pw.Text(
                       jobTitle,
                        style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold,

                        )
                      )
                    ),
                    pw.SizedBox(height: 10),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                      children: [
                        pw.Container(
                          child: pw.Text(
                            phone,
                            style: pw.TextStyle(
                              fontSize: 6,
                            ),
                          ),
                        ),
                        pw.Container(
                          child: pw.Text(
                            email,
                            style: pw.TextStyle(
                              fontSize: 6,
                            ),
                          ),
                        ),
                        pw.UrlLink(
                          child: pw.Text(
                            linkToCompany,
                            style: kUrlTextStyle.copyWith(
                                color: PdfColors.blue,
                                fontStyle: pw.FontStyle.normal,
                                fontSize: 6),
                          ),
                          destination: linkToCompany,
                        ),
                      ]
                    )
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
    return pdf;
  }
}
