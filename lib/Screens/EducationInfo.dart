import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EducationInfo extends StatelessWidget {
  const EducationInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Education Information'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFields(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFields extends StatefulWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    TextEditingController _name = TextEditingController();
    TextEditingController _course = TextEditingController();
    TextEditingController _date = TextEditingController();

    TextEditingController _name2 = TextEditingController();
    TextEditingController _course2 = TextEditingController();
    TextEditingController _date2 = TextEditingController();
    var name = '';
    var course = '';
    var date = '';
    var name2 = '';
    var course2 = '';
    var date2 = '';
    return Container(
      child: Center(
        child: Column(
          children: [
            Text('Education details :1'),
            Container(
              width: _width / 2,
              child: TextField(
                decoration: InputDecoration(hintText: 'Enter Institution Name'),
                onEditingComplete: () {
                  setState(() {
                    name = _name.text;
                  });
                },
              ),
            ),
            Container(
              width: _width / 2,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your Degree/Certification'),
                onEditingComplete: () {
                  setState(() {
                    course = _course.text;
                  });
                },
              ),
            ),
            Container(
              width: _width / 2,
              child: TextField(
                decoration:
                    InputDecoration(hintText: 'Enter Date of completion'),
                onEditingComplete: () {
                  setState(() {
                    date = _date.text;
                  });
                },
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Text('Education details :2'),
            Container(
              width: _width / 2,
              child: TextField(
                decoration: InputDecoration(hintText: 'Enter Institution Name'),
                onEditingComplete: () {
                  setState(() {
                    name2 = _name2.text;
                  });
                },
              ),
            ),
            Container(
              width: _width / 2,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your Degree/Certification'),
                onEditingComplete: () {
                  setState(() {
                    course2 = _course2.text;
                  });
                },
              ),
            ),
            Container(
              width: _width / 2,
              child: TextField(
                decoration:
                    InputDecoration(hintText: 'Enter Date of completion'),
                onEditingComplete: () {
                  setState(() {
                    date2 = _date2.text;
                  });
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('');
                setState(() {
                  savePersonalInfo(_name.text, _course.text, _date.text,
                      _name2.text, _course2.text, _date2.text);
                });
              },
              child: Text('Save Details'),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> savePersonalInfo(
      String name, String course, date, name2, course2, date2) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('Instname', name);
    prefs.setString('course', course);
    prefs.setString('Eddate1', date);
    prefs.setString('Instname2', name2);
    prefs.setString('course2', course2);
    prefs.setString('Eddate2', date2);

    // ignore: deprecated_member_use
    return prefs.commit();
  }
}
