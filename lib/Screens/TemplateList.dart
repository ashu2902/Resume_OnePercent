import 'package:flutter/material.dart';
import 'package:resume/Templates/template1.dart';
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
                    PdfApi.openFile(template4);
                  },
                  child: Text('Template4'),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
