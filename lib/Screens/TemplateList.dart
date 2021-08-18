import 'package:flutter/material.dart';
import 'package:resume/Templates/template1.dart';
import 'package:resume/Templates/template2.dart';
import 'package:resume/Templates/template4.dart';
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
            Container(
              child: TextButton(
                onPressed: () async {
                  final pdfFile2 = await PdfApi2.generateText2(
                      'Sample Name',
                      "Sample Address",
                      "Sample Phone",
                      "Sample Email",
                      "Sample Website",
                      "Company Name 1",
                      "Location 1 ",
                      "Start Date1",
                      'enddate1',
                      'companyname2',
                      'location2',
                      'startdate2',
                      'enddate2',
                      'schoolname',
                      'slocation',
                      'sdegree',
                      'referenceName',
                      'rCompany',
                      'rContactInformation');
                  PdfApi2.openFile(pdfFile2);
                },
                child: Text('template2'),
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () async {
                  final pdfFile = await Template4.generateTemplate(
                      'name',
                      'address',
                      'phone',
                      'email',
                      'about',
                      'jobTitle1',
                      'organization1',
                      'date1',
                      'skills',
                      'instName1',
                      'course1',
                      'edDate1',
                      'edDate2');
                  Template4.openFile(pdfFile);
                },
                child: Text('Template4'),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
