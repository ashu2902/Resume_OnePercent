import 'package:flutter/material.dart';
import 'package:resume/Screens/PdfScreen.dart';
import 'package:resume/Templates/PreviewTemplate.dart';
import 'package:resume/Templates/template13.dart';
import 'package:resume/Templates/template21.dart';
import 'package:resume/Templates/template22.dart';
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
import 'package:resume/Templates/template31.dart';
import 'package:resume/Templates/template4.dart';
import 'package:resume/Templates/template41.dart';
import 'package:resume/Templates/template5.dart';
import 'package:resume/Templates/template6.dart';
import 'package:resume/Templates/template7.dart';
import 'package:resume/Templates/template8.dart';
import 'package:resume/Templates/template9.dart';
import 'package:resume/Templates/template42.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Templ1 extends StatefulWidget {
  const Templ1({Key? key}) : super(key: key);

  @override
  _Templ1State createState() => _Templ1State();
}

class _Templ1State extends State<Templ1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Template'),
      ),
      body: Container(
        child: GridView.count(
          physics: BouncingScrollPhysics(),
          childAspectRatio: 0.6,
          cacheExtent: 50,
          crossAxisSpacing: 0,
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          children: [
            Container(
              child: TemplateButton(
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
                        about: "${prefs.getString('about')}",
                        jobTitle1: '${prefs.getString('JobTitle1')}',
                        organization1: '${prefs.getString('CompName1')}',
                        startdate1: '${prefs.getString('CompStartDate1')}',
                        enddate1: '${prefs.getString('CompEndDate1')}',
                        jobTitle2: '${prefs.getString('JobTitle2')}',
                        organization2: '${prefs.getString('CompName2')}',
                        startdate2: '${prefs.getString('CompStartDate2')}',
                        enddate2: '${prefs.getString('CompEndDate2')}',
                        skills:
                            '${prefs.getString('Skill1')},${prefs.getString('Skill2')},${prefs.getString('Skill3')}',
                        instName1: "${prefs.getString('Instname')}",
                        course1: "${prefs.getString('course')}",
                        edDate1: '${prefs.getString('Eddate1')}',
                        experienceAbout1: "${prefs.getString('EdSummary1')}",
                        instName2: "${prefs.getString('Instnam2')}",
                        course2: '"${prefs.getString('cours2')}"',
                        edDate2: '${prefs.getString('Eddate2')}',
                        experienceAbout2: '"${prefs.getString('EdSummary2')}"',
                        projTitle1: "${prefs.getString('ProjectTitle1')}",
                        projectDesc1: "${prefs.getString('ProjectDesc1')}",
                        projTitle2: "${prefs.getString('ProjectTitle2')}",
                        projectDesc2: "${prefs.getString('ProjectDesc2')}",
                      ),
                    ),
                  );
                },
                image: 'assets/images/template1.jpg',
                srno: 1,
              ),
            ),
            Container(
              child: //2
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
                          "${prefs.getString('CompStartDate2')}",
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
                        '${prefs.getString('name')}',
                      ),
                    ),
                  );
                },
                image: 'assets/images/template2.jpg',
                srno: 2,
              ),
            ),
//
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
                                '${prefs.getInt('phone')}',
                                '${prefs.getString('email')}',
                                "${prefs.getString('about')}",
                                '${prefs.getString('CompStartDate1')}',
                                '${prefs.getString('JobTitle1')}',
                                '${prefs.getString('CompName1')}',
                                '${prefs.getString('Summary1')}',
                                '${prefs.getString('CompStartDate2')}',
                                '${prefs.getString('JobTitle2')}',
                                '${prefs.getString('CompName2')}',
                                '${prefs.getString('Summary2')}',
                                "${prefs.getString('ProjectTitle1')}",
                                "${prefs.getString('ProjectDesc1')}",
                                "${prefs.getString('ProjectTitle2')}",
                                "${prefs.getString('ProjectDesc2')}",
                                '${prefs.getString('Skill1')},${prefs.getString('Skill2')},${prefs.getString('Skill3')}',
                                "${prefs.getString('Instname')}",
                                "${prefs.getString('course')}",
                                '${prefs.getString('Eddate1')}',
                                "${prefs.getString('Instname2')}",
                                "${prefs.getString('course2')}",
                                '${prefs.getString('Eddate2')}',
                              ),
                              '${prefs.getString('name')}')));
                },
                image: 'assets/images/template3.jpg',
                srno: 03),
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template4.jpg',
              srno: 4,
            ),
            //5
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template5.jpg',
              srno: 5,
            ),
            //6
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template6.png',
              srno: 6,
            ),
            //7
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template7.png',
              srno: 7,
            ),
            //8
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template8.png',
              srno: 8,
            ),
            //9
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template9.png',
              srno: 9,
            ),
            //10
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template10.png',
              srno: 10,
            ),
            //11
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template11.png',
              srno: 11,
            ),
            //12
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                        '${prefs.getString('course2')}',
                        '${prefs.getString('Instname')}',
                        "${prefs.getString('EdSummary2')}",
                        '${prefs.getString('Skill1')}',
                        '${prefs.getString('Skill2')}',
                        '${prefs.getString('Skill3')}',
                      ),
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template12.png',
              srno: 12,
            ),
            //13
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template13.png',
              srno: 13,
            ),
            //14
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PreviewTemplate(
                              Template14.generateText(
                                '${prefs.getString('name')}',
                                '${prefs.getString('JobTitle1')}',
                                '${prefs.getString('address')}',
                                "${prefs.getInt('phone').toString()}",
                                '${prefs.getString('email')}',
                                '${prefs.getString('Skill1')},${prefs.getString('Skill2')},${prefs.getString('Skill3')}',
                                'awardName',
                                'awardCategory',
                                'awardOrganization',
                                'awardDate',
                                'facebook',
                                'linkedIn',
                                '${prefs.getString('about')}',
                                [
                                  '${prefs.getString('JobTitle1')}',
                                  '${prefs.getString('JobTitle2')}',
                                  '',
                                  ''
                                ],
                                ['${prefs.getString('CompName1')}', '', '', ''],
                                [
                                  '${prefs.getString('CompStartDate1')}',
                                  '${prefs.getString('CompStartDate2')}',
                                  '',
                                  ''
                                ],
                                '${prefs.getString('Summary1')}',
                                '${prefs.getString('Summary2')}',
                                '${prefs.getString('course')}',
                                '${prefs.getString('Eddate1')}',
                                '${prefs.getString('Instname')}',
                                '${prefs.getString('EdSummary1')}',
                                '${prefs.getString('course2')}',
                                '${prefs.getString('Eddate2')}',
                                '${prefs.getString('Instname2')}',
                                '${prefs.getString('EdSummary1')}',
                              ),
                              '${prefs.getString('name')}',
                            )));
              },
              image: 'assets/images/template14.jpg',
              srno: 14,
            ),
            //15
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template15.jpg',
              srno: 15,
            ),
            //16
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template16.png',
              srno: 16,
            ),
            //17
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template17.png',
              srno: 17,
            ),
            //18
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template18.png',
              srno: 18,
            ),
            //19
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template19.png',
              srno: 19,
            ),
            //20
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
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
                      '${prefs.getString('name')}',
                    ),
                  ),
                );
              },
              image: 'assets/images/template20.webp',
              srno: 20,
            ),
            // Template 21
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewTemplate(
                      Template21.generateText21(
                          '${prefs.getString('name')}',
                          '${prefs.getString('address')}',
                          '${prefs.getInt('phone')}',
                          '${prefs.getString('email')}',
                          '${prefs.getString('about')}',
                          '${prefs.getString('Skill1')}',
                          '${prefs.getString('Skill2')}',
                          '${prefs.getString('Skill3')}',
                          '${prefs.getString('JobTitle1')}',
                          '${prefs.getString('CompStartDate1')}',
                          '${prefs.getString('CompEndDate1')}' ,
                          '${prefs.getString('CompName1')}' ,
                          '${prefs.getString('CompLocation1')}' ,
                          '${prefs.getString('Summary1')}' ,
                          '${prefs.getString('JobTitle2')}' ,
                          '${prefs.getString('CompStartDate2')}'  ,
                          '${prefs.getString('CompEndDate2')}',
                          '${prefs.getString('CompName2')}' ,
                          '${prefs.getString('CompLocation2')}',
                          '${prefs.getString('Summary2')}',
                          '${prefs.getString('InstName')}',
                          '${prefs.getString('course')}' ,
                          '${prefs.getString('Eddate1')}',
                          '${prefs.getString('EdSummary1')}',
                          '${prefs.getString('EdLocation1')}',
                          '${prefs.getString('Instname2')}' ,
                          '${prefs.getString('course2')}',
                          '${prefs.getString('Eddate2')}',
                          '${prefs.getString('EdSummary2')}',
                          '${prefs.getString('EdLocation2')}',
                          '${prefs.getString('Projecttitle1')}',
                          '${prefs.getString('ProjectDescription1')}',
                          '${prefs.getString('Projecttitle2')}',
                          '${prefs.getString('ProjectDescription2')}',
                          '${prefs.getString('Lang1')}',
                          '${prefs.getString('Lang2')}'
                      ),
                      '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template21.png',
                srno: 21),
            // 22
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewTemplate(
                      Template22.generateText22(
                          '${prefs.getString('name')}',
                          '${prefs.getString('address')}',
                          '${prefs.getInt('phone')}',
                          '${prefs.getString('email')}',
                          '${prefs.getString('about')}',
                          '${prefs.getString('Skill1')}',
                          '${prefs.getString('Skill2')}',
                          '${prefs.getString('Skill3')}',
                          '${prefs.getString('JobTitle1')}',
                          '${prefs.getString('CompStartDate1')}',
                          '${prefs.getString('CompEndDate1')}' ,
                          '${prefs.getString('CompName1')}' ,
                          '${prefs.getString('CompLocation1')}' ,
                          '${prefs.getString('Summary1')}' ,
                          '${prefs.getString('JobTitle2')}' ,
                          '${prefs.getString('CompStartDate2')}'  ,
                          '${prefs.getString('CompEndDate2')}',
                          '${prefs.getString('CompName2')}' ,
                          '${prefs.getString('CompLocation2')}',
                          '${prefs.getString('Summary2')}',
                          '${prefs.getString('InstName')}',
                          '${prefs.getString('course')}' ,
                          '${prefs.getString('Eddate1')}',
                          '${prefs.getString('EdSummary1')}',
                          '${prefs.getString('EdLocation1')}',
                          '${prefs.getString('Instname2')}' ,
                          '${prefs.getString('course2')}',
                          '${prefs.getString('Eddate2')}',
                          '${prefs.getString('EdSummary2')}',
                          '${prefs.getString('EdLocation2')}',
                          '${prefs.getString('Projecttitle1')}',
                          '${prefs.getString('ProjectDescription1')}',
                          '${prefs.getString('Projecttitle2')}',
                          '${prefs.getString('ProjectDescription2')}',
                          '${prefs.getString('Lang1')}',
                          '${prefs.getString('Lang2')}'
                      ),
                      '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template22.png',
                srno: 22),
            TemplateButton(
                onPressed: () async {
                  SharedPreferences prefs =
                  await SharedPreferences.getInstance();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PreviewTemplate(
                              Template31.generateText(
                                '${prefs.getString('name')}',
                                '${prefs.getString('address')}',
                                '${prefs.getInt('phone')}',
                                '${prefs.getString('email')}',
                                "${prefs.getString('about')}",
                                '${prefs.getString('Skill1')},${prefs.getString('Skill2')},${prefs.getString('Skill3')}',
                                "${prefs.getString('Instname')}",
                                "${prefs.getString('course')}",
                                '${prefs.getString('Eddate1')}',
                                "${prefs.getString('Instname2')}",
                                "${prefs.getString('course2')}",
                                '${prefs.getString('Eddate2')}',
                                '${prefs.getString('JobTitle1')}',
                                '${prefs.getString('CompName1')}',
                                  '${prefs.getString('CompStartDate1')}',
                                  '${prefs.getString('CompEndDate1')}' ,
                                '${prefs.getString('Summary1')}',
                                '${prefs.getString('JobTitle2')}',
                                '${prefs.getString('CompName2')}',
                                  '${prefs.getString('CompStartDate2')}',
                                  '${prefs.getString('CompEndDate2')}' ,
                                '${prefs.getString('Summary2')}',
                                  '${prefs.getString('Lang1')},${prefs.getString('Lang2')}'
                              ),
                              '${prefs.getString('name')}')));
                },
                image: 'assets/images/template31.jpg',
                srno: 31),
            //41
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewTemplate(
                      Template41.generateText41(
                          '${prefs.getString('name')}',
                          '${prefs.getString('JobTitle1')}',
                          '${prefs.getInt('phone')}',
                          '${prefs.getString('email')}',
                          '${prefs.getString('address')}',
                          '${prefs.getString('about')}',
                          '${prefs.getString('CompName1')}',
                          '${prefs.getString('JobTitle1')}',
                          '${prefs.getString('CompStartDate1')}',
                          '${prefs.getString('CompEndDate1')}',
                          '${prefs.getString('Summary1')}',
                          '${prefs.getString('CompName2')}',
                          '${prefs.getString('JobTitle2')}' ,
                          '${prefs.getString('CompStartDate2')}',
                          '${prefs.getString('CompEndDate2')}',
                          '${prefs.getString('Summary2')}' ,
                          '${prefs.getString('Instname')}' ,
                          '${prefs.getString('course')}'  ,
                          '${prefs.getString('Eddate1')}',
                          '${prefs.getString('Instname2')}' ,
                          '${prefs.getString('course2')}',
                          '${prefs.getString('Eddate2')}',
                          '${prefs.getString('Skill1')}',
                          '${prefs.getString('Skill2')}' ,
                          '${prefs.getString('Skill3')}',
                      ),
                      '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template41.jpg',
                srno: 41),
            //42
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PreviewTemplate(
                      Template42.generateText42(
                        '${prefs.getString('name')}',
                        '${prefs.getString('JobTitle1')}',
                        '${prefs.getInt('phone')}',
                        '${prefs.getString('email')}',
                        '${prefs.getString('address')}',
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
                        '${prefs.getString('Summary2')}' ,
                        '${prefs.getString('course')}' ,
                        '${prefs.getString('Instname')}' ,
                        '${prefs.getString('Eddate1')}',
                        '${prefs.getString('EdSummary1')}' ,
                        '${prefs.getString('course2')}',
                        '${prefs.getString('Instname2')}' ,
                        '${prefs.getString('Eddate2')}',
                        '${prefs.getString('EdSummary2')}' ,
                        '${prefs.getString('Skill1')}',
                        '${prefs.getString('Skill2')}' ,
                        '${prefs.getString('Skill3')}',
                      ),
                      '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template42.jpg',
                srno: 42),

          ],

        ),
      ),
    );
  }
}

class TemplateButton extends StatelessWidget {
  TemplateButton(
      {required this.onPressed, required this.image, required this.srno});

  final onPressed;
  final image;
  final srno;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: this.onPressed,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 240,
                child: Image(
                  image: AssetImage(
                    this.image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(this.srno.toString()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
