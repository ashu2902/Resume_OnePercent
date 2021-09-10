import 'package:flutter/material.dart';
import 'package:resume/Screens/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProjectsInfo extends StatelessWidget {
  const ProjectsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects Information'),
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

Future<bool> saveData(
    projectTitle1, projectDesc1, projectTitle2, projectDesc2) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("ProjectTitle1", projectTitle1);
  prefs.setString("ProjectDesc1", projectDesc1);
  prefs.setString("ProjectTitle2", projectTitle2);
  prefs.setString("ProjectDesc2", projectDesc2);
  // ignore: deprecated_member_use
  return prefs.commit();
}

class _TextFieldsState extends State<TextFields> {
  TextEditingController _projectTitle1 = TextEditingController();
  TextEditingController _projectDesc1 = TextEditingController();
  TextEditingController _projectTitle2 = TextEditingController();
  TextEditingController _projectDesc2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    getSharedPrefs();
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _projectTitle1 =
          new TextEditingController(text: prefs.getString("ProjectTitle1"));
      _projectDesc1 =
          new TextEditingController(text: prefs.getString("ProjectDesc1"));
      _projectTitle2 =
          new TextEditingController(text: prefs.getString("ProjectTitle2"));
      _projectDesc2 =
          new TextEditingController(text: prefs.getString("ProjectDesc2"));
    });
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Container(
      width: _width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            child: Text(
              'Project - 1',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                controller: _projectTitle1,
                decoration: InputDecoration(
                    hintText: 'Enter Project Title',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                maxLines: 8,
                controller: _projectDesc1,
                decoration: InputDecoration(
                    hintText: 'Enter Project Description',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: Container(
              height: 5,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
            child: Text(
              'Project - 1',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                controller: _projectTitle2,
                decoration: InputDecoration(
                    hintText: 'Enter Project Title',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                maxLines: 8,
                controller: _projectDesc2,
                decoration: InputDecoration(
                    hintText: 'Enter Project Description',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
                onPressed: () {
                  saveData(_projectTitle1.text, _projectDesc1.text,
                      _projectTitle2.text, _projectDesc2.text);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Save Info', style: TextStyle(
                    fontSize: 21,
                  ),),
                )),
          )
        ],
      ),
    );
  }
}
