import 'package:flutter/material.dart';
import 'package:resume/Screens/PdfScreen.dart';
import 'package:resume/Templates/PreviewTemplate.dart';
import 'package:resume/Templates/template1.dart';
import 'package:resume/Templates/template13.dart';
import 'package:resume/Templates/template21.dart';
import 'package:resume/Templates/template22.dart';
import 'package:resume/Templates/template23.dart';
import 'package:resume/Templates/template24.dart';
import 'package:resume/Templates/template25.dart';
import 'package:resume/Templates/template26.dart';
import 'package:resume/Templates/template27.dart';
import 'package:resume/Templates/template28.dart';
import 'package:resume/Templates/template29.dart';
import 'package:resume/Templates/template3.dart';
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
import 'package:resume/Templates/template30.dart';
import 'package:resume/Templates/template31.dart';
import 'package:resume/Templates/template32.dart';
import 'package:resume/Templates/template33.dart';
import 'package:resume/Templates/template34.dart';
import 'package:resume/Templates/template35.dart';
import 'package:resume/Templates/template36.dart';
import 'package:resume/Templates/template37.dart';
import 'package:resume/Templates/template38.dart';
import 'package:resume/Templates/template39.dart';
import 'package:resume/Templates/template4.dart';
import 'package:resume/Templates/template40.dart';
import 'package:resume/Templates/template41.dart';
import 'package:resume/Templates/template43.dart';
import 'package:resume/Templates/template44.dart';
import 'package:resume/Templates/template45.dart';
import 'package:resume/Templates/template46.dart';
import 'package:resume/Templates/template47.dart';
import 'package:resume/Templates/template48.dart';
import 'package:resume/Templates/template49.dart';
import 'package:resume/Templates/template5.dart';
import 'package:resume/Templates/template50.dart';
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
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.blue], stops: [0.5, 1.0],
            ),
          ),
        ),
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
                        MaterialPageRoute(builder: (context) =>
                            PreviewTemplate(
                                Template1.generateText1(
                                  '${prefs.getString('name')}',
                                  '${prefs.getString('address')}',
                                  '${prefs.getInt('phone')}',
                                  '${prefs.getString('email')}',
                                  "${prefs.getString('about')}",
                                  '${prefs.getString('JobTitle1')}',
                                  '${prefs.getString('CompName1')}',
                                  '${prefs.getString('CompStartDate1')}',
                                  '${prefs.getString('CompEndDate1')}',
                                  '${prefs.getString('JobTitle2')}',
                                  '${prefs.getString('CompName2')}',
                                  '${prefs.getString('CompStartDate2')}',
                                  '${prefs.getString('CompEndDate2')}',
                                  '${prefs.getString('Skill1')},${prefs.getString(
                                      'Skill2')},${prefs.getString('Skill3')}',
                                  "${prefs.getString('Instname')}",
                                  "${prefs.getString('course')}",
                                  '${prefs.getString('Eddate1')}',
                                  "${prefs.getString(
                                      'EdSummary1')}",
                                  "${prefs.getString('Instnam2')}",
                                  '"${prefs.getString('cours2')}"',
                                  '${prefs.getString('Eddate2')}',
                                  '"${prefs.getString(
                                      'EdSummary2')}"',
                                  "${prefs.getString('ProjectTitle1')}",
                                  "${prefs.getString('ProjectDesc1')}",
                                  "${prefs.getString('ProjectTitle2')}",
                                  "${prefs.getString('ProjectDesc2')}",
                                ), '${prefs.getString(
                                'name')}'),),
                    );
                  },
                  image: 'assets/images/template1.jpg',
                  srno:1,
                )
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
                      builder: (context) =>
                          PreviewTemplate(
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
                              '${prefs.getString('Skill1')},${prefs.getString(
                                  'Skill2')},${prefs.getString('Skill3')}',
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
                          builder: (context) =>
                              PreviewTemplate(
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
                                    '${prefs.getString('Skill1')},${prefs
                                        .getString('Skill2')},${prefs.getString(
                                        'Skill3')}',
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
                          Template12.generateTemplate12(
                            '${prefs.getString('name')}',
                            '${prefs.getString('address')}',
                            "${prefs.getInt('phone').toString()}",
                            '${prefs.getString('email')}',
                            "${prefs.getString('about')}",
                            '${prefs.getString('CompStartDate1')} -${prefs
                                .getString('CompEndDate1')} ',
                            '${prefs.getString('CompName1')}',
                            '${prefs.getString('JobTitle1')}',
                            '${prefs.getString('Summary1')}',
                            '${prefs.getString('CompStartDate2')} -${prefs
                                .getString('CompEndDate2')} ',
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
                    builder: (context) =>
                        PreviewTemplate(
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
                        builder: (context) =>
                            PreviewTemplate(
                              Template14.generateText(
                                '${prefs.getString('name')}',
                                '${prefs.getString('JobTitle1')}',
                                '${prefs.getString('address')}',
                                "${prefs.getInt('phone').toString()}",
                                '${prefs.getString('email')}',
                                '${prefs.getString('Skill1')},${prefs.getString(
                                    'Skill2')},${prefs.getString('Skill3')}',
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
                    builder: (context) =>
                        PreviewTemplate(
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
                            '${prefs.getString('Skill1')},${prefs.getString(
                                'Skill2')},${prefs.getString('Skill3')}',
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
                    builder: (context) =>
                        PreviewTemplate(
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
                              '${prefs.getString('Skill1')},${prefs.getString(
                                  'Skill2')},${prefs.getString('Skill3')}'),
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
                    builder: (context) =>
                        PreviewTemplate(
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
                            '${prefs.getString('Skill1')},${prefs.getString(
                                'Skill2')},${prefs.getString('Skill3')}',
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
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
                    builder: (context) =>
                        PreviewTemplate(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
                    builder: (context) =>
                        PreviewTemplate(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
            //23
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template23.generateText23(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
                image: 'assets/images/template23.png',
                srno: 23),
            // Template 24
            TemplateButton(
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences
                      .getInstance();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PreviewTemplate(
                              Template24.generateText24(
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
                                  '${prefs.getString('CompEndDate1')}',
                                  '${prefs.getString('CompName1')}',
                                  '${prefs.getString('CompLocation1')}',
                                  '${prefs.getString('Summary1')}',
                                  '${prefs.getString('JobTitle2')}',
                                  '${prefs.getString('CompStartDate2')}',
                                  '${prefs.getString('CompEndDate2')}',
                                  '${prefs.getString('CompName2')}',
                                  '${prefs.getString('CompLocation2')}',
                                  '${prefs.getString('Summary2')}',
                                  '${prefs.getString('InstName')}',
                                  '${prefs.getString('course')}',
                                  '${prefs.getString('Eddate1')}',
                                  '${prefs.getString('EdSummary1')}',
                                  '${prefs.getString('EdLocation1')}',
                                  '${prefs.getString('Instname2')}',
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
                image: 'assets/images/template24.png',
                srno: 24),
            // 25 template
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template25.generateText25(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
                image: 'assets/images/template25.png',
                srno: 25
            ),
            // 26 template
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template26.generateText26(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
                image: 'assets/images/template26.png', srno: 26),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template27.generateText27(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
                image: 'assets/images/template27.png',
                srno: 27),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template28.generateText28(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
            }, image: 'assets/images/template28.png',
                srno: 28),
            // Template 29
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template29.generateText29(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
            }, image: 'assets/images/template29.png',
                srno: 29),
            // Template30
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template30.generateText30(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
            }, image: 'assets/images/template30.png', srno: 30),
            TemplateButton(
                onPressed: () async {
                  SharedPreferences prefs =
                  await SharedPreferences.getInstance();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              PreviewTemplate(
                                  Template31.generateText(
                                      '${prefs.getString('name')}',
                                      '${prefs.getString('address')}',
                                      '${prefs.getInt('phone')}',
                                      '${prefs.getString('email')}',
                                      "${prefs.getString('about')}",
                                      '${prefs.getString('Skill1')},${prefs
                                          .getString('Skill2')},${prefs
                                          .getString('Skill3')}',
                                      "${prefs.getString('Instname')}",
                                      "${prefs.getString('course')}",
                                      '${prefs.getString('Eddate1')}',
                                      "${prefs.getString('Instname2')}",
                                      "${prefs.getString('course2')}",
                                      '${prefs.getString('Eddate2')}',
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
                                      '${prefs.getString('Lang1')},${prefs
                                          .getString('Lang2')}'
                                  ),
                                  '${prefs.getString('name')}')));
                },
                image: 'assets/images/template31.jpg',
                srno: 31),
            // 32
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template32.generateText(
                            '${prefs.getString('name')}',
                            '${prefs.getString('email')}',
                            '${prefs.getInt('phone')}',
                            '${prefs.getString('address')}',
                            '${prefs.getString('about')}',
                            '${prefs.getString('Lang1')},${prefs.getString(
                                'Lang2')}',
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
              image: 'assets/images/template32.jpeg',
              srno: 32,
            ),
            //33
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template33.generateText(
                            '${prefs.getString('name')}',
                            '${prefs.getString('address')}',
                            '${prefs.getString('email')}',
                            '${prefs.getInt('phone')}',
                            '${prefs.getString('about')}',
                            '${prefs.getString('Projecttitle1')}',
                            '${prefs.getString('ProjectDescription1')}',
                            '${prefs.getString('Projecttitle2')}',
                            '${prefs.getString('ProjectDescription2')}',
                            "${prefs.getString('course')}",
                            "${prefs.getString('Instname')}",
                            "${prefs.getString('Eddate1')}",
                            "${prefs.getString('course2')}",
                            "${prefs.getString('Instname2')}",
                            "${prefs.getString('Eddate2')}",
                            '${prefs.getString('Skill1')},${prefs.getString(
                                'Skill2')},${prefs.getString('Skill3')}',
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
                            '${prefs.getString('Lang1')},${prefs.getString(
                                'Lang2')}',
                          ),
                          '${prefs.getString('name')}',
                        ),
                  ),
                );
              },
              image: 'assets/images/template33.jpg',
              srno: 33,
            ),
            //34
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template34.generateText(
                            '${prefs.getString('name')}',
                            '${prefs.getString('email')}',
                            '${prefs.getInt('phone')}',
                            '${prefs.getString('address')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                            '${prefs.getString('Lang1')},${prefs.getString(
                                'Lang2')}',
                            '${prefs.getString('about')}',
                            "${prefs.getString('course')}",
                            "${prefs.getString('Instname')}",
                            "${prefs.getString('Eddate1')}",
                            "${prefs.getString('course2')}",
                            "${prefs.getString('Instname2')}",
                            "${prefs.getString('Eddate2')}",
                            '${prefs.getString('Projecttitle1')}',
                            '${prefs.getString('ProjectDescription1')}',
                            '${prefs.getString('Projecttitle2')}',
                            '${prefs.getString('ProjectDescription2')}',
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
              image: 'assets/images/template34.jpg',
              srno: 34,
            ),
            //35
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template35.generateTemplate(
                            '${prefs.getString('name')}',
                            "${prefs.getString('about')}",
                            '${prefs.getString('JobTitle1')}',
                            "${prefs.getString('course')}",
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            "${prefs.getString('EdSummary1')}",
                            "${prefs.getString('course2')}",
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            "${prefs.getString('EdSummary2')}",
                            '${prefs.getString('CompName1')}',
                            '${prefs.getString('CompStartDate1')}',
                            '${prefs.getString('Summary1')}',
                            '${prefs.getString('JobTitle2')}',
                            '${prefs.getString('CompName2')}',
                            '${prefs.getString('CompStartDate2')}',
                            '${prefs.getString('Summary2')}',
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
              image: 'assets/images/template35.jpg',
              srno: 35,
            ),
            //36
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template36.generateTemplate(
                            '${prefs.getString('name')}',
                            "${prefs.getString('about')}",
                            '${prefs.getString('JobTitle1')}',
                            "${prefs.getString('course')}",
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            "${prefs.getString('EdSummary1')}",
                            "${prefs.getString('course2')}",
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            "${prefs.getString('EdSummary2')}",
                            '${prefs.getString('CompName1')}',
                            '${prefs.getString('CompStartDate1')}',
                            '${prefs.getString('Summary1')}',
                            '${prefs.getString('JobTitle2')}',
                            '${prefs.getString('CompName2')}',
                            '${prefs.getString('CompStartDate2')}',
                            '${prefs.getString('Summary2')}',
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
              image: 'assets/images/template36.jpg',
              srno: 36,
            ),
            //37
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template37.generateText(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
            }, image: 'assets/images/template37.jpg',
                srno: 37),
            //38
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template38.generateText(
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
                              '${prefs.getString('CompEndDate1')}',
                              '${prefs.getString('CompName1')}',
                              '${prefs.getString('CompLocation1')}',
                              '${prefs.getString('Summary1')}',
                              '${prefs.getString('JobTitle2')}',
                              '${prefs.getString('CompStartDate2')}',
                              '${prefs.getString('CompEndDate2')}',
                              '${prefs.getString('CompName2')}',
                              '${prefs.getString('CompLocation2')}',
                              '${prefs.getString('Summary2')}',
                              '${prefs.getString('InstName')}',
                              '${prefs.getString('course')}',
                              '${prefs.getString('Eddate1')}',
                              '${prefs.getString('EdSummary1')}',
                              '${prefs.getString('EdLocation1')}',
                              '${prefs.getString('Instname2')}',
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
                image: 'assets/images/template38.jpg',
                srno: 38),
            //39
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template39.generateText(
                            '${prefs.getString('name')}',
                            '${prefs.getString('email')}',
                            '${prefs.getInt('phone')}',
                            '${prefs.getString('address')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                            '${prefs.getString('Lang1')},${prefs.getString(
                                'Lang2')}',
                            '${prefs.getString('about')}',
                            "${prefs.getString('course')}",
                            "${prefs.getString('Instname')}",
                            "${prefs.getString('Eddate1')}",
                            "${prefs.getString('course2')}",
                            "${prefs.getString('Instname2')}",
                            "${prefs.getString('Eddate2')}",
                            '${prefs.getString('Projecttitle1')}',
                            '${prefs.getString('ProjectDescription1')}',
                            '${prefs.getString('Projecttitle2')}',
                            '${prefs.getString('ProjectDescription2')}',
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
              image: 'assets/images/template39.jpg',
              srno: 39,
            ),
            //40
            TemplateButton(
              onPressed: () async {
                SharedPreferences prefs = await SharedPreferences.getInstance();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template40.generateText(
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
                            '${prefs.getString('ProjectDesc2')}',
                            '${prefs.getString('Lang1')}',
                            '${prefs.getString('Lang2')}',),
                          '${prefs.getString('name')}',
                        ),
                  ),
                );
              },
              image: 'assets/images/template40.jpg',
              srno: 40,
            ),
            //41
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
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
                            '${prefs.getString('JobTitle2')}',
                            '${prefs.getString('CompStartDate2')}',
                            '${prefs.getString('CompEndDate2')}',
                            '${prefs.getString('Summary2')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('course')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
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
                    builder: (context) =>
                        PreviewTemplate(
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
                            '${prefs.getString('Summary2')}',
                            '${prefs.getString('course')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('EdSummary1')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('EdSummary2')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                          ),
                          '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template42.jpg',
                srno: 42),
            //43
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template43.generateText43(
                            '${prefs.getString('name')}',
                            '${prefs.getString('JobTitle1')}',
                            '${prefs.getString('address')}',
                            '${prefs.getInt('phone')}',
                            '${prefs.getString('email')}',
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
                            '${prefs.getString('course')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('EdSummary1')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('EdSummary2')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                          ),
                          '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template43.jpg',
                srno: 43),
            //44
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template44.generateText44(
                            '${prefs.getString('name')}',
                            '${prefs.getString('JobTitle1')}',
                            '${prefs.getString('address')}',
                            '${prefs.getInt('phone')}',
                            '${prefs.getString('email')}',
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
                            '${prefs.getString('course')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('EdSummary1')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('EdSummary2')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                          ),
                          '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template44.jpg',
                srno: 44),
            //45
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template45.generateText45(
                            '${prefs.getString('name')}',
                            '${prefs.getString('address')}',
                            '${prefs.getInt('phone')}',
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
                            '${prefs.getString('course')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('EdSummary1')}',
                            '${prefs.getString('EdLocation1')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('EdSummary2')}',
                            '${prefs.getString('EdLocation2')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                          ),
                          '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template45.jpg',
                srno: 45),
            //46
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template46.generateText46(
                            '${prefs.getString('name')}',
                            '${prefs.getString('address')}',
                            '${prefs.getInt('phone')}',
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
                            '${prefs.getString('course')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('EdSummary1')}',
                            '${prefs.getString('EdLocation1')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('EdSummary2')}',
                            '${prefs.getString('EdLocation2')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                            '${prefs.getString('Lang1')}',
                            '${prefs.getString('Lang2')}',
                          ),
                          '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template46.jpg',
                srno: 46),
            //47
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template47.generateText47(
                            '${prefs.getString('name')}',
                            '${prefs.getString('address')}',
                            '${prefs.getInt('phone')}',
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
                            '${prefs.getString('course')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('EdLocation1')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('EdLocation2')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                          ),
                          '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template47.jpg',
                srno: 47),
            //48
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template48.generateText48(
                            '${prefs.getString('name')}',
                            '${prefs.getString('address')}',
                            '${prefs.getInt('phone')}',
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
                            '${prefs.getString('course')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('EdLocation1')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('EdLocation2')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                          ),
                          '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template48.jpg',
                srno: 48),

            //49
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template49.generateText49(
                            '${prefs.getString('name')}',
                            '${prefs.getString('address')}',
                            '${prefs.getInt('phone')}',
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
                            '${prefs.getString('course')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('EdLocation1')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('EdLocation2')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                          ),
                          '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template49.jpg',
                srno: 49),
            //50
            TemplateButton(onPressed: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PreviewTemplate(
                          Template50.generateText50(
                            '${prefs.getString('name')}',
                            '${prefs.getString('address')}',
                            '${prefs.getInt('phone')}',
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
                            '${prefs.getString('course')}',
                            '${prefs.getString('Instname')}',
                            '${prefs.getString('Eddate1')}',
                            '${prefs.getString('EdLocation1')}',
                            '${prefs.getString('EdSummary1')}',
                            '${prefs.getString('course2')}',
                            '${prefs.getString('Instname2')}',
                            '${prefs.getString('Eddate2')}',
                            '${prefs.getString('EdLocation2')}',
                            '${prefs.getString('EdSummary2')}',
                            '${prefs.getString('Skill1')}',
                            '${prefs.getString('Skill2')}',
                            '${prefs.getString('Skill3')}',
                          ),
                          '${prefs.getString('name')}',),
                  ));
            },
                image: 'assets/images/template50.jpg',
                srno: 50),

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
