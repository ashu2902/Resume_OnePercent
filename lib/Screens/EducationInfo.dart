import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EducationInfo extends StatelessWidget {
  const EducationInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Education Information'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      width: _width,
      child: Center(
        child: Column(
          children: [
            //Education Details 1
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('Education details :1'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _width / 2,
                child: TextField(
                  controller: _name,
                  decoration: InputDecoration(
                      hintText: 'Enter Institution Name',
                      border: OutlineInputBorder()),
                  onEditingComplete: () {
                    setState(() {
                      name = _name.text;
                    });
                  },
                ),
              ),
            ),
            Container(
              width: _width / 2,
              child: TextField(
                controller: _course,
                decoration: InputDecoration(
                    hintText: 'Enter your Degree/Certification',
                    border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {
                    course = _course.text;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _width / 2,
                child: TextField(
                  controller: _date,
                  decoration: InputDecoration(
                      hintText: 'Enter Date of completion',
                      border: OutlineInputBorder()),
                  onEditingComplete: () {
                    setState(() {
                      date = _date.text;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Divider(
                color: Colors.black.withOpacity(0.3),
                thickness: 3,
              ),
            ),

            // Education details 2
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('Education details :2'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _width / 2,
                child: TextField(
                  controller: _name2,
                  decoration: InputDecoration(
                      hintText: 'Enter Institution Name',
                      border: OutlineInputBorder()),
                  onEditingComplete: () {
                    setState(() {
                      name2 = _name2.text;
                    });
                  },
                ),
              ),
            ),
            Container(
              width: _width / 2,
              child: TextField(
                controller: _course2,
                decoration: InputDecoration(
                    hintText: 'Enter your Degree/Certification',
                    border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {
                    course2 = _course2.text;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _width / 2,
                child: TextField(
                  controller: _date2,
                  decoration: InputDecoration(
                      hintText: 'Enter Date of completion',
                      border: OutlineInputBorder()),
                  onEditingComplete: () {
                    setState(() {
                      date2 = _date2.text;
                    });
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('$name,$course,$date,$name2,$course2,$date2');
                print(_name.text);
                savePersonalInfo(_name.text, _course.text, _date.text,
                    _name2.text, _course2.text, _date2.text);
              },
              child: Text('Save Details'),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> savePersonalInfo(
      name, course, date, name2, course2, date2) async {
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
