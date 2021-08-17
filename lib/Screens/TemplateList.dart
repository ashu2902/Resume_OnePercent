import 'package:flutter/material.dart';
import 'package:resume/Templates/Tamplate3.dart';
import 'package:resume/Templates/template1.dart';
import 'package:resume/Templates/template4.dart';
import 'package:resume/Templates/template2.dart';
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
                      'Sample Title-1',
                      'Sample Organization',
                      '01-02-20XX',
                      'skill-1,skill-2,skill-3',
                      '${prefs.getString('Instname')}',
                      '${prefs.getString('course')}',
                      '${prefs.getString('Eddate1')}',
                      '${prefs.getString('Instname2')}',
                      '${prefs.getString('course2')}',
                      '${prefs.getString('Eddate2')}');
                  Template1.openFile(pdfFile);
                },
                child: Text('Template1'),

        ),
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


