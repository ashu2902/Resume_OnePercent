import 'package:flutter/material.dart';
import 'package:resume/Screens/PdfScreen.dart';
import 'package:resume/Templates/PreviewTemplate.dart';
import 'package:resume/Templates/template13.dart';
import 'package:resume/Templates/template3.dart';
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
                  TemplateButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Template1(
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
                                projectDesc2: 'projectDesc2'),
                          ),
                        );
                      },
                      image: 'test'),

                  //2
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template2.generateText2(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template2.jpg',
                  ),
                  //3
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template3.generateText(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template3.jpg',
                  ),
                  //4
                  TemplateButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PreviewTemplate(
                              Template4.generateTemplate(
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
                              ),
                            ),
                          ),
                        );
                      },
                      image: 'assets/images/template4.jpg'),
                  //5
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template5.generateText5(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template5.jpg',
                  ),
                  //6
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template6.generateTemplate(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template6.png',
                  ),
                  //7
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template7.generateTemplate(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template7.png',
                  ),
                  //8
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template8.generateText8(
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
                                '${prefs.getString('ProjectDesc2')}'),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template8.png',
                  ),
                  //9
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template9.generateText9(
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
                                '${prefs.getString('ProjectDesc2')}'),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template9.png',
                  ),
                  //10
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template10.generateText10(
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
                                '${prefs.getString('ProjectDesc2')}'),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template10.png',
                  ),
                  //11
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template11.generateText11(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template11.png',
                  ),
                  //12
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template12.generateTemplate12(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template12.png',
                  ),
                  //13
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template13.generateTemplate(
                              '${prefs.getString('name')}',
                              '${prefs.getString('address')}',
                              "${prefs.getInt('phone').toString()}",
                              '${prefs.getString('email')}',
                              '${prefs.getString('about')}',
                              '${prefs.getString('JobTitle1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompStartDate1')}',
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Instname')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
                              '${prefs.getString('Eddate2')}',
                              '${prefs.getString('EdSummary2')}',
                              '${prefs.getString('EdLocation2')}',
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template13.jpg',
                  ),
                  //14
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                    },
                    image: 'template14',
                  ),
                  //15
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template15.generateText(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'img',
                  ),
                  //16
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template16.generateText16(
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
                                '${prefs.getString('Skill1')},${prefs.getString('Skill2')},${prefs.getString('Skill3')}'),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template16.png',
                  ),
                  //17
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template17.generateText17(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template17.png',
                  ),
                  //18
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template18.generateText18(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template18.png',
                  ),
                  //19
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template19.generateText19(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'assets/images/template19.png',
                  ),
                  //20
                  TemplateButton(
                    onPressed: () async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                            Template20.generateText20(
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
                            ),
                          ),
                        ),
                      );
                    },
                    image: 'img',
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class TemplateButton extends StatelessWidget {
  TemplateButton({required this.onPressed, required this.image});

  final onPressed;
  final image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: this.onPressed,
        child: Container(
          child: Image(
            image: AssetImage(
              this.image,
            ),
          ),
        ),
      ),
    );
  }
}
