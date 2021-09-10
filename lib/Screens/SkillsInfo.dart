import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomePage.dart';

class SkillsInfo extends StatefulWidget {
  const SkillsInfo({Key? key}) : super(key: key);

  @override
  _SkillsInfoState createState() => _SkillsInfoState();
}

Future<bool> saveData(skill1, skill2, skill3, lang1, lang2) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("Skill1", skill1);
  prefs.setString("Skill2", skill2);
  prefs.setString("Skill3", skill3);
  prefs.setString("Lang1", lang1);
  prefs.setString("Lang2", lang2);
  // ignore: deprecated_member_use
  return prefs.commit();
}

class _SkillsInfoState extends State<SkillsInfo> {
  TextEditingController _skill1 = TextEditingController();
  TextEditingController _skill2 = TextEditingController();
  TextEditingController _skill3 = TextEditingController();
  TextEditingController _lang1 = TextEditingController();
  TextEditingController _lang2 = TextEditingController();

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _skill1 = new TextEditingController(text: prefs.getString("Skill1"));
      _skill2 = new TextEditingController(text: prefs.getString("Skill2"));
      _skill3 = new TextEditingController(text: prefs.getString("Skill3"));
      _lang1 = new TextEditingController(text: prefs.getString("Lang1"));
      _lang2 = new TextEditingController(text: prefs.getString("Lang2"));
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

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.blue], stops: [0.5, 1.0],
            ),
          ),
        ),
        title: Text('Skills Information'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8.0),
                  child: Text(
                    'Enter Three Skills',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: _width / 1.2,
                    child: TextField(
                      controller: _skill1,
                      decoration: InputDecoration(
                          hintText: 'Enter Skill 1',
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: _width / 1.2,
                    child: TextField(
                      controller: _skill2,
                      decoration: InputDecoration(
                          hintText: 'Enter Skill 2',
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: _width / 1.2,
                    child: TextField(
                      controller: _skill3,
                      decoration: InputDecoration(
                          hintText: 'Enter Skill 3',
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 8.0),
                  child: Text(
                    'Enter Languages',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: _width / 1.2,
                    child: TextField(
                      controller: _lang1,
                      decoration: InputDecoration(
                          hintText: 'Enter language',
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: _width / 1.2,
                    child: TextField(
                      controller: _lang2,
                      decoration: InputDecoration(
                          hintText: 'Enter Language',
                          border: OutlineInputBorder()),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        saveData(_skill1.text, _skill2.text, _skill3.text,
                            _lang1.text, _lang2.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.indigo,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Save Information', style: TextStyle(fontSize: 18),),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
