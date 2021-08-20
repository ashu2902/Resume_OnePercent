
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

// template 9
class Template9 {
  static Future<File> generateText9(
      name,
      address,
      contact_no,
      mail_id,
      professionalsummary,
      skills,
      professionaltitle1,
      cduration1,
      companyname1,
      clocation1,
      cdescription1,
      professionaltitle2,
      cduration2,
      companyname2,
      clocation2,
      cdescription2,
      professionaltitle3,
      cduration3,
      companyname3,
      clocation3,
      cdescription3,
      schoolname1,
      degree1,
      sduration1,
      sdescription1,
      slocation1,
      schoolname2,
      degree2,
      sduration2,
      sdescription2,
      slocation2,
      ) async {
    final pdf9 = pw.Document();
    pdf9.addPage(pw.Page(
      build: (context)=>
      pw.Row(
        children: [
          pw.Flexible(flex: 2,
          child: pw.Expanded(
            child: pw.Column(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text('$name',style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 30
                  )),
                  pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                      children: [
                        pw.Text('$address'),
                        pw.Text('$contact_no'),
                        pw.Text('$mail_id'),
                      ]
                  ),
                  // PROFESSIONAL SUMMARY
                  pw.SizedBox(height: 5),
                  pw.Text('PROFESSIONAL SUMMARY',style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 20
                  )),
                  pw.Text('$professionalsummary'),
                  pw.SizedBox(height: 7),
                  // SKILLS
                  pw.Text('SKILLS',style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 20
                  )),
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                      children: [
                        pw.Bullet(text: '$skills'),
                        pw.Bullet(text: '$skills'),
                      ]),
                  pw.SizedBox(height: 7),
                  //EXPERIENCE
                  pw.Text('EXPERIENCE',style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 20
                  )),
                  //company1
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text('$professionaltitle1',style: pw.TextStyle()),
                        pw.Text('$cduration1',style: pw.TextStyle()),
                      ]),
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text('$companyname1',style: pw.TextStyle()),
                        pw.Text('$clocation1',style: pw.TextStyle()),
                      ]),
                  pw.Text('$cdescription1'),
                  pw.SizedBox(height: 5),
                  //company2
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text('$professionaltitle2',style: pw.TextStyle()),
                        pw.Text('$cduration2',style: pw.TextStyle()),
                      ]),
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text('$companyname2',style: pw.TextStyle()),
                        pw.Text('$clocation2',style: pw.TextStyle()),
                      ]),
                  pw.Text('$cdescription2'),
                  pw.SizedBox(height: 5),
                  //company3
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text('$professionaltitle3',style: pw.TextStyle()),
                        pw.Text('$cduration3',style: pw.TextStyle()),
                      ]),
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text('$companyname3',style: pw.TextStyle()),
                        pw.Text('$clocation3',style: pw.TextStyle()),
                      ]),
                  pw.Text('$cdescription3'),
                  pw.SizedBox(height: 7),
                  //Education
                  pw.Text('EDUCATION',style: pw.TextStyle(
                      fontWeight: pw.FontWeight.bold,
                      fontSize: 20
                  )),
                  //School1
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text('$schoolname1/$degree1',style: pw.TextStyle()),
                        pw.Text('$sduration1',style: pw.TextStyle()),
                      ]),
                  pw.SizedBox(height: 5),
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text('$sdescription1',style: pw.TextStyle()),
                        pw.Text('$slocation1',style: pw.TextStyle()),
                      ]),
                  pw.SizedBox(height: 5),

                  //School2
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text('$schoolname2/$degree2',style: pw.TextStyle()),
                        pw.Text('$sduration2',style: pw.TextStyle()),
                      ]),
                  pw.SizedBox(height: 5),
                  pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text('$sdescription1',style: pw.TextStyle()),
                        pw.Text('$slocation1',style: pw.TextStyle()),
                      ]),
                ]
            ),
          ))
        ]
      ),
    ),
    );
    return saveDocument9(name: 'resume9', pdf: pdf9);
  }
  static Future<File> saveDocument9(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file9) async {
    final url = file9.path;

    await OpenFile.open(url);
  }
}
