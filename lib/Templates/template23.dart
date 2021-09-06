import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume/Screens/PdfScreen.dart';

class Template23 {
  static final kTitleTextstyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      fontSize: 20,
      color: PdfColors.blue,
      letterSpacing: 1)
  ;
  static final kTitleBlackSubTextstyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      color: PdfColors.black,
      letterSpacing: 1)
  ;
  static final kTitleGreySubTextstyle = pw.TextStyle(
      fontWeight: pw.FontWeight.bold,
      color: PdfColors.grey,
      letterSpacing: 1)
  ;
  static pw.Document generateText23(
      name,
      address,
      phone,
      email,
      about,
      skill1,
      skill2,
      skill3,
      jobTitle1,
      compStartDate1,
      compEndDate1,
      compName1,
      compLocation1,
      summary1,
      jobTitle2,
      compStartDate2,
      compEndDate2,
      compName2,
      compLocation2,
      summary2,
      instName,
      course,
      eddate1,
      edSummary1,
      edLocation1,
      instname2,
      course2,
      eddate2,
      edSummary2,
      edLocation2,
      projecttitle1,
      projectDescription1,
      projecttitle2,
      projectDescription2,
      lang1,
      lang2
      ){
    final pdf23 = pw.Document();
    pdf23.addPage(
        pw.Page(
            margin: pw.EdgeInsets.all(0.0),
            build: (context) => pw.Row(
              children: [
                // 1 part
               pw.Expanded(
                 flex: 1,
                 child: pw.Padding(
                   padding: pw.EdgeInsets.fromLTRB(40, 40, 20, 20),
                   child: pw.Column(
                       mainAxisAlignment: pw.MainAxisAlignment.start,
                       crossAxisAlignment: pw.CrossAxisAlignment.start,
                     children: [
                        pw.Text("$name",style: pw.TextStyle(
                          color: PdfColors.blue,
                          fontSize: 30,
                          fontWeight: pw.FontWeight.bold
                        )),
                       pw.SizedBox(height: 5),
                       pw.Text('$jobTitle1',style: pw.TextStyle(color: PdfColors.grey
                       ,fontSize: 20)),
                       pw.SizedBox(height: 10),
                       // about
                       pw.Text("About me".toUpperCase(),style: kTitleTextstyle),
                       pw.Divider(thickness: 1,color: PdfColors.blue),
                       pw.SizedBox(height: 10),
                       pw.Text('$about',style:kTitleBlackSubTextstyle),
                       pw.SizedBox(height: 10),
                       // Contact
                       pw.Text("Contact".toUpperCase(),style: kTitleTextstyle),
                       pw.Divider(thickness: 1,color: PdfColors.blue),
                       pw.SizedBox(height: 10),
                       pw.Text('$email',style:kTitleBlackSubTextstyle),
                       pw.SizedBox(height: 5),
                       pw.Text('$phone',style: kTitleGreySubTextstyle),
                       pw.SizedBox(height: 5),
                       pw.Text('$address',style: kTitleGreySubTextstyle),
                       pw.SizedBox(height: 15),
                       //skills
                       pw.Text("skills".toUpperCase(),style: kTitleTextstyle),
                       pw.Divider(thickness: 1,color: PdfColors.blue),
                       pw.SizedBox(height: 10),
                       pw.Bullet(text: '$skill1'),
                       pw.Bullet(text: '$skill2'),
                       pw.Bullet(text: '$skill3'),
                       pw.SizedBox(height: 15),
                       //Language
                       pw.Text("language".toUpperCase(),style: kTitleTextstyle),
                       pw.Divider(thickness: 1,color: PdfColors.blue),
                       pw.SizedBox(height: 10),
                       pw.Text('$lang1, $lang2',style:kTitleBlackSubTextstyle),
                     ]
                   ) ),
               ),
                // 2 part
                pw.Expanded
                  (
                  flex: 1,
                  child: pw.Padding(
                    padding: pw.EdgeInsets.fromLTRB(30, 40, 20, 20),
                    child: pw.Column(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          //Education
                          pw.Text("Education".toUpperCase(),style: kTitleTextstyle),
                          pw.Divider(thickness: 1,color: PdfColors.blue),
                          pw.SizedBox(height: 10),
                          pw.Text('$course',style:kTitleBlackSubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$instName',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$edLocation1',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$eddate1',style:kTitleBlackSubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$edSummary1',style: kTitleGreySubTextstyle),
                          // 2
                          pw.SizedBox(height: 10),
                          pw.Text('$course2',style:kTitleBlackSubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$instname2',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$edLocation2',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$eddate2',style:kTitleBlackSubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$edSummary2',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 15),
                          // Projects
                          pw.Text("projects".toUpperCase(),style: kTitleTextstyle),
                          pw.Divider(thickness: 1,color: PdfColors.blue),
                          pw.SizedBox(height: 10),
                          pw.Text('$projecttitle1',style:kTitleBlackSubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$projectDescription1',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 5),
                          //2
                          pw.SizedBox(height: 10),
                          pw.Text('$projecttitle2',style:kTitleBlackSubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$projectDescription2',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 5),
                          //Experience
                          pw.SizedBox(height: 15),
                          pw.Text("Experience".toUpperCase(),style: kTitleTextstyle),
                          pw.Divider(thickness: 1,color: PdfColors.blue),
                          pw.SizedBox(height: 10),
                          //1
                          pw.Text('$jobTitle1',style:kTitleBlackSubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compName1',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compLocation1',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compStartDate1- $compEndDate1',style:kTitleBlackSubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$summary1',style: kTitleGreySubTextstyle),
                          //2
                          pw.SizedBox(height: 10),
                          //1
                          pw.Text('$jobTitle2',style:kTitleBlackSubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compName2',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compLocation2',style: kTitleGreySubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$compStartDate2- $compEndDate2',style:kTitleBlackSubTextstyle),
                          pw.SizedBox(height: 5),
                          pw.Text('$summary2',style: kTitleGreySubTextstyle),
                        ]
                    ) ),
                ),
              ]
            )
        ));
    return pdf23;
  }


  static Future<File> saveDocument(
      {required String name, required pw.Document pdf}) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);
    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }
}
