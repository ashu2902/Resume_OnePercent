import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SkillsInfo extends StatefulWidget {
  const SkillsInfo({Key? key}) : super(key: key);

  @override
  _SkillsInfoState createState() => _SkillsInfoState();
}

Future<bool> saveData(skill1, skill2, skill3) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("Skill1", skill1);
  prefs.setString("Skill2", skill2);
  prefs.setString("Skill3", skill3);
  // ignore: deprecated_member_use
  return prefs.commit();
}

class _SkillsInfoState extends State<SkillsInfo> {
  TextEditingController _skill1 = TextEditingController();
  TextEditingController _skill2 = TextEditingController();
  TextEditingController _skill3 = TextEditingController();
  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _skill1 = new TextEditingController(text: prefs.getString("Skill1"));
      _skill2 = new TextEditingController(text: prefs.getString("Skill2"));
      _skill3 = new TextEditingController(text: prefs.getString("Skill3"));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSharedPrefs();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Skills Information'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
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
              ElevatedButton(
                  onPressed: () {
                    saveData(_skill1.text, _skill2.text, _skill3.text);
                  },
                  child: Text('Save skills'))
            ],
          ),
        ),
      ),
    );
  }
}
