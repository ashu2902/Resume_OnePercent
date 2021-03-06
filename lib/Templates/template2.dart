
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// template 2
class Template2 {
  static pw.Document generateText2(
    name,
    address,
    phone,
    email,
    about,
    companyname1,
    location1,
    startdate1,
    enddate1,
    summary1,
    companyname2,
    location2,
    startdate2,
    enddate2,
    summary2,
    schoolname,
    slocation,
    sdegree,
    edSummary1,
    schoolname2,
    slocation2,
    sdegree2,
    edSummary2,
    skills,
    projecttitle1,
    projectDescription1,
    projecttitle2,
    projectDescription2,
  ) {
    final pdf2 = pw.Document();
    pdf2.addPage(
      pw.Page(
        build: (context) => pw.Column(children: [
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child: pw.Text('$name',
                style: pw.TextStyle(
                  color: PdfColors.deepOrange,
                  fontSize: 20,
                )),
          ), //add color
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child:
                pw.Text("$address, $phone", style: pw.TextStyle(fontSize: 17)),
          ),
          pw.Container(
            alignment: pw.Alignment.centerRight,
            child: pw.Text('$email', style: pw.TextStyle(fontSize: 17)),
          ),
          pw.SizedBox(height: 30),
          pw.Column(
              mainAxisAlignment: pw.MainAxisAlignment.start,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                // Objective
                pw.Container(
                  alignment: pw.Alignment.topLeft,
                  child:
                      pw.Text('Objectives', style: pw.TextStyle(fontSize: 17)),
                ),
                pw.Container(
                  alignment: pw.Alignment.centerLeft,
                  child: pw.Text('$about'),
                ),
                pw.SizedBox(height: 20),

                // Experience
                pw.Container(
                  alignment: pw.Alignment.topLeft,
                  child:
                      pw.Text('Experience', style: pw.TextStyle(fontSize: 17)),
                ),
                pw.SizedBox(height: 10),
                // company 1
                pw.Container(
                    child: pw.Text("[$companyname1,$location1]",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.Container(child: pw.Text("Dates $startdate1 to $enddate1")),
                pw.Container(child: pw.Text('$summary1')),
                pw.SizedBox(height: 10),
                // company 2
                pw.Container(
                    child: pw.Text("[$companyname2,$location2]",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.Container(child: pw.Text("Dates [$startdate2]-[$enddate2]")),
                pw.Container(child: pw.Text('$summary2')),
                pw.SizedBox(height: 20),

                // Education
                pw.Container(
                  alignment: pw.Alignment.topLeft,
                  child:
                      pw.Text('Education', style: pw.TextStyle(fontSize: 17)),
                ),
                pw.SizedBox(height: 10),
                //Education1
                pw.Container(
                    child: pw.Text("[$schoolname,$slocation,$sdegree]",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.Container(child: pw.Text('$edSummary1')),
                pw.SizedBox(height: 20),
                //Education 2
                pw.Container(
                    child: pw.Text("[$schoolname2,$slocation,$sdegree2]",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.Container(child: pw.Text('$edSummary2')),

                pw.SizedBox(height: 20),
                // Skills
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child:
                        pw.Text('SKILLS', style: pw.TextStyle(fontSize: 17))),
                pw.SizedBox(height: 10),
                pw.Container(
                    child: pw.Text("$skills",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),

                pw.SizedBox(height: 20),
                // Projects
                pw.Container(
                    alignment: pw.Alignment.topLeft,
                    child:
                        pw.Text('Projects', style: pw.TextStyle(fontSize: 17))),
                pw.SizedBox(height: 10),
                pw.Container(
                    child: pw.Text("$projecttitle1",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.Text('$projectDescription1'),
                pw.SizedBox(height: 8),
                pw.Container(
                    child: pw.Text("$projecttitle2",
                        style: pw.TextStyle(
                            color: PdfColors.blueGrey500, fontSize: 14))),
                pw.Text('$projectDescription2'),
              ]),
        ]),
      ),
    );
    return pdf2;
  }

}
