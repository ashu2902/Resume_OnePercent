import 'package:flutter/material.dart';
import 'package:resume/Screens/EducationInfo.dart';
import 'package:resume/Screens/PersonalInfo.dart';
import 'package:resume/Widgets/FieldButton.dart';

import 'TemplateList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Container(
            child: Column(
          children: [
            FieldButton(text: 'Personal Information', path: PersonalInfo()),
            FieldButton(text: 'Education', path: EducationInfo()),
            FieldButton(text: 'Experience', path: null),
            FieldButton(text: 'Skills', path: null),
            FieldButton(text: 'Projects', path: null),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TemplateList()));
                },
                child: Text('Select Template'))
          ],
        )),
      ),
    );
  }
}
