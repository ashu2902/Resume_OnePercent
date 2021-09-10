import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomePage.dart';

class EducationInfo extends StatelessWidget {
  const EducationInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.blue], stops: [0.5, 1.0],
            ),
          ),
        ),
        title: Text('Education Information'),
      ),
      body: ListView(
        children: [
          TextFields(),
        ],
      )
    );
  }
}

class TextFields extends StatefulWidget {
  const TextFields({Key? key}) : super(key: key);

  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  TextEditingController _name = TextEditingController();
  TextEditingController _edLocation1 = TextEditingController();

  TextEditingController _course = TextEditingController();
  TextEditingController _date = TextEditingController();
  TextEditingController _summary1 = TextEditingController();

  TextEditingController _name2 = TextEditingController();
  TextEditingController _edLocation2 = TextEditingController();

  TextEditingController _course2 = TextEditingController();
  TextEditingController _date2 = TextEditingController();
  TextEditingController _summary2 = TextEditingController();

  var name = '';
  var location1 = '';
  var course = '';
  var date = '';
  var summary1 = '';

  var name2 = '';
  var location2 = '';
  var course2 = '';
  var date2 = '';
  var summary2 = '';
  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _name = new TextEditingController(text: prefs.getString("Instname"));
      _edLocation1 =
          new TextEditingController(text: prefs.getString("EdLocation1"));

      _course = new TextEditingController(text: prefs.getString("course"));
      _date = new TextEditingController(text: prefs.getString("Eddate1"));
      _summary1 =
          new TextEditingController(text: prefs.getString("EdSummary1"));
      _name2 = new TextEditingController(text: prefs.getString("Instname2"));
      _edLocation2 =
          new TextEditingController(text: prefs.getString("EdLocation2"));

      _course2 = new TextEditingController(text: prefs.getString("course2"));
      _date2 = new TextEditingController(text: prefs.getString("Eddate2"));
      _summary2 =
          new TextEditingController(text: prefs.getString("EdSummary2"));
    });
  }

  @override
  void initState() {
    super.initState();

    getSharedPrefs();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Container(
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Education Details 1
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Education Details: 1', textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _width / 2,
                child: TextField(
                  controller: _edLocation1,
                  decoration: InputDecoration(
                      hintText: 'Enter Location', border: OutlineInputBorder()),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _course,
                decoration: InputDecoration(
                    hintText: 'Enter your Degree/Certification',
                    border: OutlineInputBorder()),
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
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _width / 2,
                child: TextField(
                  maxLines: 5,
                  controller: _summary1,
                  decoration: InputDecoration(
                      hintMaxLines: 6,
                      hintText:
                          'You might want to include your GPA here and a brief summary of relevent coursework,awards and honors',
                      border: OutlineInputBorder()),
                  onEditingComplete: () {
                    setState(() {
                      date = _summary1.text;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
              child: Container(
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
              ),
            ),

            // Education details 2
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Education Details: 2', textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _width / 2,
                child: TextField(
                  controller: _edLocation2,
                  decoration: InputDecoration(
                      hintText: 'Enter Location', border: OutlineInputBorder()),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: _width / 2,
                child: TextField(
                  maxLines: 5,
                  controller: _summary2,
                  decoration: InputDecoration(
                      hintMaxLines: 6,
                      hintText:
                          'You might want to include your GPA here and a brief summary of relevent coursework,awards and honors',
                      border: OutlineInputBorder()),
                  onEditingComplete: () {
                    setState(() {
                      date = _summary2.text;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(

                onPressed: () {
                  print('$name,$course,$date,$name2,$course2,$date2');
                  print(_name.text);
                  savePersonalInfo(
                      _name.text,
                      _edLocation1.text,
                      _course.text,
                      _date.text,
                      _summary1.text,
                      _name2.text,
                      _edLocation2.text,
                      _course2.text,
                      _date2.text,
                      _summary2.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                ),
                child:Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Save Details',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )));
  }

  Future<bool> savePersonalInfo(name, location1, course, date, summary1, name2,
      location2, course2, date2, summary2) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('Instname', name);
    prefs.setString('EdLocation1', location1);

    prefs.setString('course', course);
    prefs.setString('Eddate1', date);
    prefs.setString('EdSummary1', summary1);

    prefs.setString('Instname2', name2);
    prefs.setString('EdLocation2', location2);

    prefs.setString('course2', course2);
    prefs.setString('Eddate2', date2);
    prefs.setString('EdSummary2', summary2);

    // ignore: deprecated_member_use
    return prefs.commit();
  }
}
