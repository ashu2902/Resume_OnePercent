import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume/Templates/Tamplate3.dart';
import 'package:resume/Templates/template1.dart';
<<<<<<< HEAD
import 'package:resume/Templates/template4.dart';
=======
import 'package:resume/Templates/template2.dart';
>>>>>>> d78e380a86d85ac0629b012454531555e762674d
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
<<<<<<< HEAD

=======
              //template 1
>>>>>>> e11f55f714210a3ed9b39105e83419d37b7f23cd
              Container(
                child: TextButton(
                  onPressed: () async {
                    SharedPreferences prefs =
<<<<<<< HEAD
                    await SharedPreferences.getInstance();
                    final pdfFile = await PdfApi.generateText(
=======
                        await SharedPreferences.getInstance();
                    final pdfFile = await Template1.generateText(
>>>>>>> e11f55f714210a3ed9b39105e83419d37b7f23cd
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
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    final pdfFile2 = await PdfApi2();
                    PdfApi2.openFile(pdfFile2);
                  },
                  child: Text('template2'),
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
            ],
          )
        ),
      ),
    );
  }
}
