import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class Template5 {
  static Future<File> generateText5() async {
   final pdf5 = pw.Document();
   pdf5.addPage(
     pw.Page(
       build: (context) => pw.Column(
         mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Container(
            alignment: pw.Alignment.center,
            child: pw.Text('CURRICULUM VITAE',style: pw.TextStyle(
                fontWeight: pw.FontWeight.bold,
                fontSize: 30,
                decoration: pw.TextDecoration.underline,
              decorationThickness: 1.5
                 )),
          ),
          pw.SizedBox(height: 20),
          pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.start,
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Container(child: pw.Text('Ashok Kumar',style: pw.TextStyle(
            fontWeight: pw.FontWeight.bold
          ))),
              pw.Container(child: pw.Text('Add:- VPO Malik Pur,')),
              pw.Container(child: pw.Text('New Delhi- 110073')),
              pw.Row(children: [
                pw.Container(child: pw.Text('Mobile No:- ',style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold
                ))),
                pw.Container(child: pw.Text('9921270837')),
              ]),
            pw.SizedBox(height: 15),
            pw.Divider(color: PdfColors.black,thickness: 3.0),
            ]),
          pw.SizedBox(height: 10),
          // Career Objective
          pw.Container(
              color: PdfColors.grey400,
                height: 15,
                alignment: pw.Alignment.centerLeft,
                child: pw.Text('CAREER OBJECTIVE',style: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold
                ))),
        pw.SizedBox(height: 5),
          pw.Container(
            child: pw.Text('To build career in a growing organization, where I can get the '
                'opportunities to prove my abilities by accepting challenges,fulfilling '
                'the organizational goal and climg the career ladder through continous learning '
                'and commitment.')
          ),
          pw.SizedBox(height: 15),
          // Academic Qualification
          pw.Container(
              color: PdfColors.grey400,
              height: 15,
              alignment: pw.Alignment.centerLeft,
              child: pw.Text('ACADEMIC QUALIFICATION',style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold
              ))),
          pw.SizedBox(height: 5),
          pw.Bullet(text: '10th Passed from CBSE Board'),
          pw.Bullet(text: '12th Passed from CBSE Board'),
        // Experience
          pw.SizedBox(height: 15),
          pw.Container(
              color: PdfColors.grey400,
              height: 15,
              alignment: pw.Alignment.centerLeft,
              child: pw.Text('EXPERIENCE',style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold
              ))),
          pw.SizedBox(height: 5),
          pw.Bullet(text: '2 year experience in RPM Rajouri Garden'),
          pw.Bullet(text: '4 months experience Lizar Loans'),
          pw.Bullet(text: '1 years experience in Tool Tax (Rajokri Gurgaon)'),
          // PERSONAL SKILLS
          pw.SizedBox(height: 15),
          pw.Container(
              color: PdfColors.grey400,
              height: 15,
              alignment: pw.Alignment.centerLeft,
              child: pw.Text('PERSONAL SKILL',style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold
              ))),
          pw.SizedBox(height: 5),
          pw.Bullet(text: 'Honesty'),
          pw.Bullet(text: 'Team Spirit'),
          pw.Bullet(text: 'Accepting Challenges'),
         //Personal Profile
         //  pw.SizedBox(height: 15),
         //  pw.Container(
         //      color: PdfColors.grey400,
         //      height: 15,
         //      alignment: pw.Alignment.centerLeft,
         //      child: pw.Text('PERSONAL PROFILE',style: pw.TextStyle(
         //          fontWeight: pw.FontWeight.bold
         //      ))),
         // pw.Row(
         //   children: [
         //     pw.Bullet(text: 'Fathers Name'),
         //     pw.Text('Sh. Hari Krishan Sharma'),
         //   ]
         // ),

         // DECLARATION
          pw.SizedBox(height: 15),
          pw.Container(
              color: PdfColors.grey400,
              height: 15,
              alignment: pw.Alignment.centerLeft,
              child: pw.Text('DECLARATION',style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold
              ))),
          pw.SizedBox(height: 5),
          pw.Text('I solemnly declare that all the above information is correct to the best of my'
              'knowledge and belief'),
          pw.SizedBox(height: 10),
          pw.Text('Date:'),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Text('Place: New Delhi'),
              pw.Text('ASHOK KUMAR',style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold
              ))
            ]
          )
        ]
       )
     ),
   );
    return saveDocument5(name: 'resume5', pdf: pdf5);
  }
  static Future<File> saveDocument5(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file5) async {
    final url = file5.path;

    await OpenFile.open(url);
  }

}