import 'package:flutter/material.dart';
import 'package:resume/Templates/Tamplate3.dart';
import 'package:resume/Templates/template1.dart';
import 'package:resume/Templates/template14.dart';
import 'package:resume/Templates/template2.dart';
import 'package:resume/Templates/template4.dart';
import 'package:resume/Templates/template5.dart';
import 'package:resume/Templates/template6.dart';
import 'package:resume/Templates/template7.dart';
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
                      '${prefs.getString('Skill1')},${prefs.getString('Skill2')},${prefs.getString('Skill3')}',
                      '${prefs.getString('Instname')}',
                      '${prefs.getString('course')}',
                      '${prefs.getString('Eddate1')}',
                      '${prefs.getString('Summary1')}',
                      '${prefs.getString('Instname2')}',
                      '${prefs.getString('course2')}',
                      '${prefs.getString('Eddate2')}',
                      '${prefs.getString('Summary2')}',
                      '${prefs.getString('ProjectTitle1')}',
                      '${prefs.getString('ProjectDesc1')}',
                      '${prefs.getString('ProjectTitle2')}',
                      '${prefs.getString('ProjectDesc2')}');
                  Template1.openFile(pdfFile);
                },
                child: Text('Template1'),
              ),
            ),

            //template2
            Container(
              child: TextButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    final template2 = await PdfApi2.generateText2(
                      '${prefs.getString('name')}',
                      "${prefs.getString('address')}",
                      "${prefs.getInt('phone')}",
                      "${prefs.getString('email')}",
                      "${prefs.getString('about')}",
                      "${prefs.getString('CompName1')}",
                      "${prefs.getString('CompLocation1')}",
                      "${prefs.getString('CompStartDate1')}",
                      "${prefs.getString('CompEndDate1')}",
                      '${prefs.getString('Summary1')}',
                      "${prefs.getString('CompName2')}",
                      "${prefs.getString('CompLocation1')}",
                      "${prefs.getString('CompStartDate1')}",
                      "${prefs.getString('CompEndDate2')}",
                      '${prefs.getString('Summary2')}',
                      "${prefs.getString('Instname')}",
                      "${prefs.getString('EdLocation1')}",
                      "${prefs.getString('course')}",
                      "${prefs.getString('EdSummary1')}",
                      "${prefs.getString('Instname2')}",
                      "${prefs.getString('EdLocation2')}",
                      "${prefs.getString('course2')}",
                      "${prefs.getString('EdSummary2')}",
                      '${prefs.getString('Skill1')},${prefs.getString('Skill2')},${prefs.getString('Skill3')}',
                    );
                    PdfApi2.openFile(template2);
                  },
                  child: Text('Template2')),
            ),
            //Template 3
            Container(
              child: TextButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  final pdf = await Pdf.generateText(
                    '${prefs.getString('name')}',
                    '${prefs.getString('address')}',
                    "${prefs.getInt('phone')}",
                    "${prefs.getString('email')}",
                    "${prefs.getString('about')}",
                    "${prefs.getString('CompStartDate1')}",
                    "${prefs.getString('JobTitle1')}",
                    "${prefs.getString('CompName1')}",
                    '${prefs.getString('Summary1')}',
                    "${prefs.getString('CompStartDate2')}",
                    "${prefs.getString('JobTitle2')}",
                    "${prefs.getString('CompName2')}",
                    '${prefs.getString('Summary2')}',
                    '${prefs.getString('ProjectTitle1')}',
                    '${prefs.getString('ProjectDesc1')}',
                    '${prefs.getString('ProjectTitle2')}',
                    '${prefs.getString('ProjectDesc2')}',
                    '${prefs.getString('Skill1')},${prefs.getString('Skill2')},${prefs.getString('Skill3')}',
                    '${prefs.getString('Instname')}',
                    "${prefs.getString('course')}",
                    '${prefs.getString('Eddate1')}',
                    '${prefs.getString('Instname2')}',
                    "${prefs.getString('course2')}",
                    '${prefs.getString('Eddate2')}',
                  );
                  Pdf.openFile(pdf);
                },
                child: Text('Template3'),
              ),
            ),
            //Template4
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
                      '${prefs.getString('JobTitle1')}',
                      '${prefs.getString('CompName1')}',
                      '${prefs.getString('CompStartDate1')}',
                      '${prefs.getString('Summary1')}',
                      '${prefs.getString('JobTitle2')}',
                      '${prefs.getString('CompName2')}',
                      '${prefs.getString('CompStartDate2')}',
                      '${prefs.getString('Summary2')}',
                      '${prefs.getString('Skill1')}',
                      '${prefs.getString('Skill2')}',
                      '${prefs.getString('Skill3')}',
                      '${prefs.getString('Instname')}',
                      '${prefs.getString('course')}',
                      '${prefs.getString('Eddate1')}',
                      '${prefs.getString('Eddate2')}');
                  Template4.openFile(template4);
                },
                child: Text('Template4'),
              ),
            ),
            //Template5
            Container(
              child: TextButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  final template5 = await Template5.generateText5(
                    '${prefs.getString('name')}',
                    '${prefs.getString('address')}',
                    '${prefs.getInt('phone')}',
                    "${prefs.getString('about')}",
                    '${prefs.getString('course')}',
                    '${prefs.getString('Instname')}',
                    "${prefs.getString('course2')}",
                    '${prefs.getString('Instname2')}',
                    '${prefs.getString('JobTitle1')}',
                    '${prefs.getString('CompName1')}',
                    '${prefs.getString('JobTitle2')}',
                    '${prefs.getString('CompName2')}',
                    '${prefs.getString('Skill1')}',
                    '${prefs.getString('Skill2')}',
                    '${prefs.getString('Skill3')}',
                  );
                  Template5.openFile(template5);
                },
                child: Text('Template5'),
              ),
            ),
            //Template6
            Container(
              child: TextButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  final template6 = await Template6.generateTemplate();
                  Template6.openFile(template6);
                },
                child: Text('Template6'),
              ),
            ),
            //Template7
            Container(
              child: TextButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  final pdf = await Template7.generateText();
                  Template7.openFile(pdf);
                },
                child: Text('Template7'),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  final pdf = await Template14.generateText();
                  Template14.openFile(pdf);
                },
                child: Text('Template14'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
