import 'package:flutter/material.dart';
import 'package:resume/Templates/Tamplate3.dart';
import 'package:resume/Templates/template1.dart';
import 'package:resume/Templates/template11.dart';
import 'package:resume/Templates/template12.dart';
import 'package:resume/Templates/template14.dart';
import 'package:resume/Templates/template15.dart';
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
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Select Template'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
              width: _width / 1.26,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //template 1
                  TemplateButton(
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
                      title: 'Template1'),

                  //template2
                  TemplateButton(
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
                      title: 'Template2'),

                  //Template 3
                  TemplateButton(
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
                      title: 'Template3'),
                  //Template4
                  TemplateButton(
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
                      title: 'Template4'),
                  //Template5
                  TemplateButton(
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
                      title: 'Template5'),

                  //Template6
                  TemplateButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        final template6 = await Template6.generateTemplate(
                          '${prefs.getString('name')}',
                          "${prefs.getString('about')}",
                          '${prefs.getString('JobTitle1')}',
                          '${prefs.getString('CompName1')}',
                          '${prefs.getString('CompStartDate1')}',
                          '${prefs.getString('Summary1')}',
                          '${prefs.getString('JobTitle2')}',
                          '${prefs.getString('CompName2')}',
                          '${prefs.getString('CompStartDate2')}',
                          '${prefs.getString('Summary2')}',
                          "${prefs.getString('course')}",
                          '${prefs.getString('Instname')}',
                          '${prefs.getString('Eddate1')}',
                          "${prefs.getString('EdSummary1')}",
                          '${prefs.getString('address')}',
                          '${prefs.getInt('phone')}',
                          '${prefs.getString('email')}',
                          '${prefs.getString('Skill1')}',
                          '${prefs.getString('Skill2')}',
                          '${prefs.getString('Skill3')}',
                          '${prefs.getString('Lang1')}',
                          '${prefs.getString('Lang2')}',
                        );
                        Template6.openFile(template6);
                      },
                      title: 'Template6'),

                  //Template7
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf = await Template7.generateText(
                        '${prefs.getString('name')}',
                        '${prefs.getString('JobTitle1')}',
                        '${prefs.getString('email')}',
                        '${prefs.getInt('phone')}',
                        '${prefs.getString('address')}',
                        [
                          '${prefs.getString('Skill1')}',
                          '${prefs.getString('Skill2')}',
                          '${prefs.getString('Skill3')}',
                        ],
                        "${prefs.getString('course')}",
                        '${prefs.getString('Instname')}',
                        "${prefs.getString('EdLocation1')}",
                        ['', '', '', ''], //hobbies
                        "${prefs.getString('about')}",
                        '${prefs.getString('JobTitle1')}',
                        '${prefs.getString('CompName1')}',
                        '${prefs.getString('CompStartDate1')}',
                        '${prefs.getString('Summary1')}',
                        '${prefs.getString('JobTitle2')}',
                        '${prefs.getString('CompName2')}',
                        '${prefs.getString('CompStartDate2')}',
                        '${prefs.getString('Summary2')}',
                        '${prefs.getString('ProjectTitle1')}',
                        '',
                        '${prefs.getString('ProjectDesc1')}',
                      );
                      Template7.openFile(pdf);
                    },
                    title: 'Template7',
                  ),
                  //11
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf11 = await Template11.generateTemplate(
                        '${prefs.getString('name')}',
                        '${prefs.getString('address')}',
                        '+91 123456789',
                        'email@email.com',
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididuntut labore et dolore magna aliqua. Ut enim ad minim veniam, quis  nostrud exercitation ullamco',
                        'Redford & Sons, Boston, MA',
                        'Administrator Assistant',
                        'Sept 2015 - present',
                        [
                          'Notable Achievement/Responsibility',
                          'Notable Achievement/Responsibility',
                          'Notable Achievement/Responsibility'
                        ],
                        'Blueford & Fathers, Coston, DA',
                        'Administrator of the coffee machine',
                        'Dec 1996 - 2014',
                        [
                          'Notable Achievement/Responsibility',
                          'Notable Achievement/Responsibility',
                          'Notable Achievement/Responsibility'
                        ],
                        'River Brooks University',
                        'Bachelor of Arts',
                        'Honors cum laude (GPA 3.5/4.0)',
                        'Expert in Microsoft Office',
                        'Bilingual in English and Spanish',
                        'HTML, CSS and Javascript',
                      );
                      Template11.openFile(pdf11);
                    },
                    title: 'Template11',
                  ),
                  //Template12
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf12 = await Template12.generateTemplate(
                        'John Smith',
                        'IT Project Manager',
                        'Portland, MA',
                        '123-456-789',
                        'email@email.com',
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore',
                        '2006-12',
                        'Some Company',
                        'Senior Project Manager',
                        [
                          'Notable Achievement/Responsibility',
                          'Notable Achievement/Responsibility',
                          'Notable Achievement/Responsibility'
                        ],
                        '2003-11',
                        'Some Company',
                        'Junior Project Manager',
                        [
                          'Notable Achievement/Responsibility',
                          'Notable Achievement/Responsibility',
                          'Notable Achievement/Responsibility'
                        ],
                        '1999-02',
                        'Master of Computer Science',
                        'University of Maryland',
                        [
                          'Graduated with a pineapple',
                          'Member of the Homeless Society'
                        ],
                        '1996-07',
                        'Bachelor of Computer Science',
                        'University of Maryland',
                        [
                          'Member of the Student Association of Blind People',
                          'Managed student project of 50+ rodents',
                        ],
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                      );
                      Template12.openFile(pdf12);
                    },
                    title: 'Template12',
                  ),
                  //14
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf = await Template14.generateText(
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        [],
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        [],
                        [],
                        [],
                        [],
                        [],
                        [],
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                      );
                      Template14.openFile(pdf);
                    },
                    title: 'template14',
                  ),
                  //15
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf = await Template15.generateText(
                        '${prefs.getString('name')}',
                        '${prefs.getString('address')}',
                        '${prefs.getInt('phone')}',
                        '${prefs.getString('email')}',
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
                        '${prefs.getString('ProjectDesc2')}',
                        '${prefs.getString('Lang1')}',
                        '${prefs.getString('Lang2')}',
                      );
                      Template15.openFile(pdf);
                    },
                    title: 'Template15',
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class TemplateButton extends StatelessWidget {
  TemplateButton({required this.onPressed, required this.title});
  final onPressed;
  final title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: ElevatedButton(
            onPressed: this.onPressed,
            child:
                Container(height: 50, child: Center(child: Text(this.title)))),
      ),
    );
  }
}
