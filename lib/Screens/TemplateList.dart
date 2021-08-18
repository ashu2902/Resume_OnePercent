import 'package:flutter/material.dart';
import 'package:resume/Templates/Tamplate3.dart';
import 'package:resume/Templates/template1.dart';
import 'package:resume/Templates/template2.dart';
import 'package:resume/Templates/template4.dart';
import 'package:resume/Templates/template5.dart';
import 'package:resume/Templates/template6.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TemplateList extends StatefulWidget {
  const TemplateList({Key? key}) : super(key: key);

  @override
  _TemplateListState createState() => _TemplateListState();
}

class _TemplateListState extends State<TemplateList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //template 1
            Container(
              child: TextButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  final pdfFile = await Template1.generateText(
                      '${prefs.getString('name')}',
                      '${prefs.getString('address')}',
                      '${prefs.getInt('phone')}',
                      '${prefs.getString('email')}',
                      "${prefs.getString('about')}",
                      "${prefs.getString('JobTitle1')}",
                      "${prefs.getString('CompName1')}",
                      "${prefs.getString('CompStartDate1')}",
                      "${prefs.getString('CompEndDate1')}",
                      "${prefs.getString('JobTitle2')}",
                      "${prefs.getString('CompName2')}",
                      "${prefs.getString('CompStartDate2')}",
                      "${prefs.getString('CompEndDate2')}",
                      'skill-1,skill-2,skill-3',
                      '${prefs.getString('Instname')}',
                      '${prefs.getString('course')}',
                      '${prefs.getString('Eddate1')}',
                      'About Information ',
                      '${prefs.getString('Instname2')}',
                      '${prefs.getString('course2')}',
                      '${prefs.getString('Eddate2')}',
                      'ProjectTitle1',
                      'ProjectDate1',
                      'ProjectTitle2',
                      'ProjectDate2');
                  Template1.openFile(pdfFile);
                },
                child: Text('Template1'),
              ),
            ),
            //template4
            Container(
              child: TextButton(onPressed: ()async {
                final template2 = await PdfApi2.generateText2("name",
                    "address",
                    "phone",
                    "email",
                    "website",
                    "companyname1",
                    "location1",
                    "startdate1",
                    "enddate1",
                    "companyname2",
                    "location2",
                    "startdate2",
                    "enddate2",
                    "schoolname",
                    "slocation",
                    "sdegree",
                    "referenceName",
                    "rCompany",
                    "rContactInformation");
                PdfApi2.openFile(template2);
              },
              child: Text('Template2')),
            ),
            Container(
              child: TextButton(
                onPressed: () async {
                  SharedPreferences prefs =
                  await SharedPreferences.getInstance();
                  final pdf = await Pdf.generateText(
                      '${prefs.getString('name')}',
                      '${prefs.getString('address')}',
                      '${prefs.getInt('phone')}',
                      '${prefs.getString('email')}',
                      "${prefs.getString('about')}",
                      'Sample Title-1',
                      'Sample Organization',
                      '01-02-20XX',
                      'skill-1,skill-2,skill-3',
                      '${prefs.getString('Instname')}',
                      '${prefs.getString('course')}',
                      '${prefs.getString('Eddate1')}',
                      '${prefs.getString('Eddate2')}');
                  Pdf.openFile(pdf);
                },
                child: Text('Template3'),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  final template4 = await Template4.generateTemplate(
                      '${prefs.getString('name')}',
                      '${prefs.getString('address')}',
                      '${prefs.getInt('phone')}',
                      '${prefs.getString('email')}',
                      "${prefs.getString('about')}",
                      'Sample Title-1',
                      'Sample Organization',
                      '01-02-20XX',
                      'skill-1,skill-2,skill-3',
                      '${prefs.getString('Instname')}',
                      '${prefs.getString('course')}',
                      '${prefs.getString('Eddate1')}',
                      '${prefs.getString('Eddate2')}');
                  Template4.openFile(template4);
                },
                child: Text('Template4'),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: ()async {
                  final template5 = await Template5.generateText5();
                  Template5.openFile(template5);
                },
                child: Text('Template5'),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () async {
                  SharedPreferences prefs =
                  await SharedPreferences.getInstance();
                  final template6 = await Template6.generateTemplate(
                      '${prefs.getString('name')}',
                      '${prefs.getString('address')}',
                      '${prefs.getInt('phone')}',
                      '${prefs.getString('email')}',
                      "${prefs.getString('about')}",
                      'Sample Title-1',
                      'Sample Organization',
                      '01-02-20XX',
                      'skill-1,skill-2,skill-3',
                      '${prefs.getString('Instname')}',
                      '${prefs.getString('course')}',
                      '${prefs.getString('Eddate1')}',
                      '${prefs.getString('Eddate2')}');
                  Template6.openFile(template6);
                },
                child: Text('Template6'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
