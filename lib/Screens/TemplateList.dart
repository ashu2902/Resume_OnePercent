import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume/Templates/template1.dart';
import 'package:resume/Templates/template2.dart';
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
              Container(
                child: TextButton(
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    final pdfFile = await PdfApi.generateText(
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
                    PdfApi.openFile(pdfFile);
                  },
                  child: Text('Template1'),
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
            ],
          )
        ),
      ),
    );
  }
}
