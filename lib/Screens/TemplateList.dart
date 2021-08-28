import 'package:flutter/material.dart';
import 'package:resume/Screens/PdfScreen.dart';
import 'package:resume/Templates/Tamplate3.dart';
import 'package:resume/Templates/template1.dart';
import 'package:resume/Templates/template10.dart';
import 'package:resume/Templates/template11.dart';
import 'package:resume/Templates/template12.dart';
import 'package:resume/Templates/template14.dart';
import 'package:resume/Templates/template15.dart';
import 'package:resume/Templates/template16.dart';

import 'package:resume/Templates/template17.dart';
import 'package:resume/Templates/template18.dart';
import 'package:resume/Templates/template19.dart';
import 'package:resume/Templates/template2.dart';
import 'package:resume/Templates/template20.dart';
import 'package:resume/Templates/template4.dart';
import 'package:resume/Templates/template5.dart';
import 'package:resume/Templates/template6.dart';
import 'package:resume/Templates/template7.dart';
import 'package:resume/Templates/template8.dart';
import 'package:resume/Templates/template9.dart';
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
                  ///1
                  ///
                  TemplateButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Temp1(
                                    name: '${prefs.getString('name')}',
                                    address: '${prefs.getString('address')}',
                                    phone: '${prefs.getInt('phone')}',
                                    email: '${prefs.getString('email')}',
                                    about: 'about',
                                    jobTitle1: 'jobTitle1',
                                    organization1: 'organization1',
                                    startdate1: 'startdate1',
                                    enddate1: 'enddate1',
                                    jobTitle2: 'jobTitle2',
                                    organization2: 'organization2',
                                    startdate2: 'startdate2',
                                    enddate2: 'enddate2',
                                    skills: 'skills',
                                    instName1: 'instName1',
                                    course1: 'course1',
                                    edDate1: 'edDate1',
                                    experienceAbout1: 'experienceAbout1',
                                    instName2: 'instName2',
                                    course2: 'course2',
                                    edDate2: 'edDate2',
                                    experienceAbout2: 'experienceAbout2',
                                    projTitle1: 'projTitle1',
                                    projectDesc1: 'projectDesc1',
                                    projTitle2: 'projTitle2',
                                    projectDesc2: 'projectDesc2')));
                      },
                      title: 'test'),

                  //2
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
                          "${prefs.getString('ProjectTitle1')}",
                          "${prefs.getString('ProjectDesc1')}",
                          "${prefs.getString('ProjectTitle2')}",
                          "${prefs.getString('ProjectDesc2')}",
                        );
                        PdfApi2.openFile(template2);
                      },
                      title: 'Template2'),

                  ///3
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
                    title: 'Template 3',
                  ),
                  //4
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
                          '${prefs.getString('Eddate2')}',
                        );
                        Template4.openFile(template4);
                      },
                      title: 'Template4'),
                  //5
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
                        "${prefs.getString('ProjectTitle1')}",
                        "${prefs.getString('ProjectDesc1')}",
                        "${prefs.getString('ProjectTitle2')}",
                        "${prefs.getString('ProjectDesc2')}",
                      );
                      Template5.openFile(template5);
                    },
                    title: 'Template 5',
                  ),
                  //6
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
                    title: 'Template6',
                  ),
                  //7
                  TemplateButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        final pdf = await Template7.generateText(
                          '${prefs.getString('name')}',
                          '${prefs.getString('JobTitle1')}',
                          "${prefs.getString('email')}",
                          "${prefs.getInt('phone')}",
                          '${prefs.getString('address')}',
                          '${prefs.getString('Skill1')},',
                          '${prefs.getString('Skill2')},',
                          '${prefs.getString('Skill3')}',
                          '${prefs.getString('course')}',
                          '${prefs.getString('Instname')}',
                          '${prefs.getString("EdLocation1")}',
                          '${prefs.getString('Summary1')}',
                          "${prefs.getString('JobTitle1')}",
                          "${prefs.getString('CompName1')}",
                          "${prefs.getString('CompStartDate1')}",
                          '${prefs.getString("Summary1")}',
                          "${prefs.getString('JobTitle2')}",
                          '${prefs.getString('Instname2')}',
                          "${prefs.getString('CompStartDate2')}",
                          '${prefs.getString("Summary2")}',
                          '${prefs.getString('ProjectTitle1')}',
                          '${prefs.getString('ProjectDesc1')}',
                        );
                        Template7.openFile(pdf);
                      },
                      title: 'Template7'),
                  //8
                  TemplateButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        final pdf8 = await Template8.generateText8(
                            '${prefs.getString('name')}',
                            '${prefs.getString('address')}',
                            '${prefs.getInt('phone')}',
                            '${prefs.getString('email')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                            '${prefs.getString('CompName1')}',
                            '${prefs.getString('JobTitle1')}',
                            '${prefs.getString('CompStartDate1')}',
                            '${prefs.getString('CompEndDate1')}',
                            '${prefs.getString('CompLocation1')}',
                            '${prefs.getString('Summary1')}',
                            '${prefs.getString('CompName2')}',
                            '${prefs.getString('JobTitle2')}',
                            '${prefs.getString('CompStartDate2')}',
                            '${prefs.getString('CompEndDate2')}',
                            '${prefs.getString('CompLocation2')}',
                            '${prefs.getString('Summary2')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('course')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('EdLocation1')}',
                            '${prefs.getString('EdSummary1')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('EdLocation2')}',
                            '${prefs.getString('EdSummary2')}',
                            '${prefs.getString('ProjectTitle1')}',
                            '${prefs.getString('ProjectDesc1')}',
                            '${prefs.getString('ProjectTitle2')}',
                            '${prefs.getString('ProjectDesc2')}');
                        Template8.openFile(pdf8);
                      },
                      title: 'Template8'),
                  //9
                  TemplateButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        final pdf9 = await Template9.generateText9(
                            '${prefs.getString('name')}',
                            '${prefs.getString('address')}',
                            "${prefs.getInt('phone')}",
                            "${prefs.getString('email')}",
                            "${prefs.getString('about')}",
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                            '${prefs.getString('JobTitle1')}',
                            '${prefs.getString('CompStartDate1')}',
                            "${prefs.getString('CompEndDate1')}",
                            "${prefs.getString('CompName1')}",
                            "${prefs.getString('CompLocation1')}",
                            '${prefs.getString('Summary1')}',
                            '${prefs.getString('JobTitle2')}',
                            '${prefs.getString('CompStartDate2')}',
                            "${prefs.getString('CompEndDate2')}",
                            "${prefs.getString('CompName2')}",
                            "${prefs.getString('CompLocation2')}",
                            '${prefs.getString('Summary2')}',
                            "${prefs.getString('Instname')}",
                            "${prefs.getString('course')}",
                            "${prefs.getString('EdSummary1')}",
                            "${prefs.getString('EdSummary1')}",
                            "${prefs.getString('EdLocation1')}",
                            "${prefs.getString('Instname2')}",
                            "${prefs.getString('course2')}",
                            "${prefs.getString('EdSummary2')}",
                            "${prefs.getString('EdSummary2')}",
                            "${prefs.getString('EdLocation2')}",
                            '${prefs.getString('ProjectTitle1')}',
                            '${prefs.getString('ProjectDesc1')}',
                            '${prefs.getString('ProjectTitle2')}',
                            '${prefs.getString('ProjectDesc2')}');
                        Template9.openFile(pdf9);
                      },
                      title: 'Template9'),
                  //10
                  TemplateButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        final pdf10 = await Template10.generateText10(
                            "${prefs.getString('name')}",
                            "${prefs.getString('address')}",
                            "${prefs.getInt('phone')}",
                            "${prefs.getString('email')}",
                            "${prefs.getString('about')}",
                            "${prefs.getString('JobTitle1')}",
                            "${prefs.getString('CompName1')}",
                            "${prefs.getString('CompLocation1')}",
                            "${prefs.getString('CompStartDate1')}",
                            "${prefs.getString('CompEndDate1')}",
                            "${prefs.getString('Summary1')}",
                            "${prefs.getString('JobTitle2')}",
                            "${prefs.getString('CompName2')}",
                            "${prefs.getString('CompLocation2')}",
                            "${prefs.getString('CompStartDate2')}",
                            "${prefs.getString('CompEndDate2')}",
                            "${prefs.getString('Summary2')}",
                            "${prefs.getString('Instname')}",
                            "${prefs.getString('course')}",
                            "${prefs.getString('EdLocation1')}",
                            "${prefs.getString('Eddate1')}",
                            "${prefs.getString('EdSummary1')}",
                            "${prefs.getString('Instname2')}",
                            "${prefs.getString('course2')}",
                            "${prefs.getString('EdLocation2')}",
                            "${prefs.getString('Eddate2')}",
                            "${prefs.getString('EdSummary2')}",
                            "${prefs.getString('Skill1')}",
                            "${prefs.getString('Skill2')}",
                            "${prefs.getString('Skill3')}",
                            '${prefs.getString('ProjectTitle1')}',
                            '${prefs.getString('ProjectDesc1')}',
                            '${prefs.getString('ProjectTitle2')}',
                            '${prefs.getString('ProjectDesc2')}');

                        Template10.openFile(pdf10);
                      },
                      title: 'Template10'),
                  //11
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf11 = await Template11.generateTemplate(
                        '${prefs.getString('name')}',
                        '${prefs.getString('address')}',
                        "${prefs.getInt('phone').toString()}",
                        '${prefs.getString('email')}',
                        "${prefs.getString('about')}",
                        '${prefs.getString('CompName1')}',
                        '${prefs.getString('JobTitle1')}',
                        '${prefs.getString('CompStartDate1')}',
                        '${prefs.getString('CompEndDate1')}',
                        '${prefs.getString('Summary1')}',
                        '${prefs.getString('CompName2')}',
                        '${prefs.getString('JobTitle2')}',
                        '${prefs.getString('CompStartDate2')}',
                        '${prefs.getString('CompEndDate2')} ',
                        '${prefs.getString('Summary2')}',
                        "${prefs.getString('Instname')}",
                        "${prefs.getString('course')}",
                        "${prefs.getString('EdSummary1')}",
                        '${prefs.getString('Skill1')}',
                        '${prefs.getString('Skill2')}',
                        '${prefs.getString('Skill3')}',
                      );
                      Template11.openFile(pdf11);
                    },
                    title: 'Template11',
                  ),
                  //12
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf12 = await Template12.generateTemplate(
                        '${prefs.getString('name')}',
                        '${prefs.getString('address')}',
                        "${prefs.getInt('phone').toString()}",
                        '${prefs.getString('email')}',
                        "${prefs.getString('about')}",
                        '${prefs.getString('CompStartDate1')} -${prefs.getString('CompEndDate1')} ',
                        '${prefs.getString('CompName1')}',
                        '${prefs.getString('JobTitle1')}',
                        '${prefs.getString('Summary1')}',
                        '${prefs.getString('CompStartDate2')} -${prefs.getString('CompEndDate2')} ',
                        '${prefs.getString('CompName2')}',
                        '${prefs.getString('JobTitle2')}',
                        '${prefs.getString('Summary2')}',
                        '${prefs.getString('Eddate1')}',
                        '${prefs.getString('course')}',
                        '${prefs.getString('Instname')}',
                        "${prefs.getString('EdSummary1')}",
                        '${prefs.getString('Eddate1')}',
                        '${prefs.getString('course')}',
                        '${prefs.getString('Instname')}',
                        "${prefs.getString('EdSummary1')}",
                        '${prefs.getString('Skill1')}',
                        '${prefs.getString('Skill2')}',
                        '${prefs.getString('Skill3')}',
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
                      title: 'Template:15'),

                  //16
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf = await Template16.generateText(
                        '${prefs.getString('name')}',
                        '${prefs.getString('address')}',
                        '${prefs.getInt('phone')}',
                        '${prefs.getString('email')}',
                        '${prefs.getString('about')}',
                        '${prefs.getString('Instname')}',
                        '${prefs.getString('course')}',
                        '${prefs.getString('Eddate1')}',
                        '${prefs.getString('Instname2')}',
                        '${prefs.getString('course2')}',
                        '${prefs.getString('Eddate2')}',
                        "${prefs.getString('JobTitle1')}",
                        "${prefs.getString('CompName1')}",
                        "${prefs.getString('CompStartDate1')}",
                        "${prefs.getString('CompEndDate1')}",
                        '${prefs.getString('Summary1')}',
                        "${prefs.getString('JobTitle2')}",
                        "${prefs.getString('CompName2')}",
                        "${prefs.getString('CompStartDate2')}",
                        "${prefs.getString('CompEndDate2')}",
                        '${prefs.getString('Summary2')}',
                        '${prefs.getString('Skill1')},${prefs.getString('Skill2')},${prefs.getString('Skill3')}',
                      );
                      Template16.openFile(pdf);
                    },
                    title: 'Template16',
                  ),
                  //17
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf = await Template17.generateText(
                        '${prefs.getString('name')}',
                        '${prefs.getString('address')}',
                        '${prefs.getString('email')}',
                        '${prefs.getInt('phone')}',
                        '${prefs.getString('about')}',
                        "${prefs.getString('JobTitle1')}",
                        "${prefs.getString('CompName1')}",
                        "${prefs.getString('CompStartDate1')}",
                        "${prefs.getString('CompEndDate1')}",
                        '${prefs.getString('Summary1')}',
                        "${prefs.getString('JobTitle2')}",
                        "${prefs.getString('CompName2')}",
                        "${prefs.getString('CompStartDate2')}",
                        "${prefs.getString('CompEndDate2')}",
                        '${prefs.getString('Summary2')}',
                        '${prefs.getString('Instname')}',
                        '${prefs.getString('course')}',
                        '${prefs.getString('Eddate1')}',
                        '${prefs.getString('Instname2')}',
                        '${prefs.getString('course2')}',
                        '${prefs.getString('Eddate2')}',
                        '${prefs.getString('Skill1')},${prefs.getString('Skill2')},${prefs.getString('Skill3')}',
                      );
                      Template17.openFile(pdf);
                    },
                    title: 'Template17',
                  ),
                  //18
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf = await Template18.generateText(
                        '${prefs.getString('name')}',
                        '${prefs.getString('address')}',
                        '${prefs.getInt('phone')}',
                        '${prefs.getString('email')}',
                        '${prefs.getString('about')}',
                        "${prefs.getString('course')}",
                        "${prefs.getString('Eddate1')}",
                        "${prefs.getString('Instname')}",
                        "${prefs.getString('EdSummary1')}",
                        '${prefs.getString('course2')}',
                        "${prefs.getString('Eddate2')}",
                        "${prefs.getString('EdLocation2')}",
                        "${prefs.getString('EdSummary2')}",
                        "${prefs.getString('Skill1')}",
                        '${prefs.getString('Skill2')}',
                        '${prefs.getString('Skill3')}',
                        '${prefs.getString('JobTitle1')}',
                        '${prefs.getString('CompName1')}',
                        '${prefs.getString('CompStartDate1')}',
                        '${prefs.getString('CompEndDate1')}',
                        '${prefs.getString('Summary1')}',
                        '${prefs.getString('JobTitle2')}',
                        '${prefs.getString('CompName2')}',
                        '${prefs.getString('CompStartDate2')}',
                        '${prefs.getString('CompEndDate2')}',
                        '${prefs.getString('Summary2')}',
                      );
                      Template18.openFile(pdf);
                    },
                    title: 'Template18',
                  ),
                  //19
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf = await Template19.generateText(
                        '${prefs.getString('name')}',
                        '${prefs.getString('email')}',
                        '${prefs.getInt('phone')}',
                        '${prefs.getString('address')}',
                        '${prefs.getString('Skill1')}',
                        "${prefs.getString('Skill2')}",
                        "${prefs.getString('Skill3')}",
                        "${prefs.getString('course')}",
                        "${prefs.getString('Instname')}",
                        '${prefs.getString('EdLocation1')}',
                        "${prefs.getString('Eddate1')}",
                        "${prefs.getString('course2')}",
                        "${prefs.getString('Instname2')}",
                        "${prefs.getString('Eddate2')}",
                        '${prefs.getString('EdLocation2')}',
                        '${prefs.getString('about')}',
                        '${prefs.getString('JobTitle1')}',
                        '${prefs.getString('CompName1')}',
                        '${prefs.getString('CompStartDate1')}',
                        '${prefs.getString('CompEndDate1')}',
                        '${prefs.getString('Summary1')}',
                        '${prefs.getString('JobTitle2')}',
                        '${prefs.getString('CompName2')}',
                        '${prefs.getString('CompStartDate2')}',
                        '${prefs.getString('CompEndDate2')}',
                        '${prefs.getString('Summary2')}',
                      );
                      Template19.openFile(pdf);
                    },
                    title: 'Template19',
                  ),
                  //20
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final pdf = await Template20.generateText(
                        '${prefs.getString('name')}',
                        '${prefs.getString('JobTitle1')}',
                        '${prefs.getString('about')}',
                        '${prefs.getString('JobTitle1')}',
                        '${prefs.getString('CompName1')}',
                        "${prefs.getString('CompLocation1')}",
                        "${prefs.getString('CompStartDate1')}",
                        "${prefs.getString('CompEndDate1')}",
                        "${prefs.getString('Summary1')}",
                        '${prefs.getString('JobTitle2')}',
                        '${prefs.getString('CompName2')}',
                        "${prefs.getString('CompLocation2')}",
                        "${prefs.getString('CompStartDate2')}",
                        "${prefs.getString('CompEndDate2')}",
                        "${prefs.getString('Summary2')}",
                        '${prefs.getString('email')}',
                        '${prefs.getInt('phone').toString()}',
                        '${prefs.getString('address')}',
                        '${prefs.getString('Skill1')}',
                        '${prefs.getString('Skill2')}',
                        '${prefs.getString('Skill3')}',
                        '${prefs.getString('course')}',
                        '${prefs.getString('Instname')}',
                        '${prefs.getString('EdLocation1')}',
                        '${prefs.getString('Eddate1')}',
                        '${prefs.getString('course2')}',
                        '${prefs.getString('Instname2')}',
                        '${prefs.getString('EdLocation2')}',
                        '${prefs.getString('Eddate2')}',
                      );
                      Template20.openFile(pdf);
                    },
                    title: 'Template20',
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
          child: Container(
            height: 50,
            child: Center(
              child: Text(this.title),
            ),
          ),
        ),
      ),
    );
  }
}
