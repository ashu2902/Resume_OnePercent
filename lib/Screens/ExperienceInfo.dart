import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ExperienceInfo extends StatelessWidget {
  const ExperienceInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experience Information'),
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
  TextEditingController _jobTitle1 = TextEditingController();
  TextEditingController _compName1 = TextEditingController();
  TextEditingController _location1 = TextEditingController();
  TextEditingController _startDate1 = TextEditingController();
  TextEditingController _endDate1 = TextEditingController();
  TextEditingController _summary1 = TextEditingController();
  TextEditingController _jobTitle2 = TextEditingController();
  TextEditingController _compName2 = TextEditingController();
  TextEditingController _location2 = TextEditingController();
  TextEditingController _startDate2 = TextEditingController();
  TextEditingController _endDate2 = TextEditingController();
  TextEditingController _summary2 = TextEditingController();

  Future<bool> savePersonalInfo(
      jobTitle1,
      compName1,
      location1,
      startDate1,
      endDate1,
      summary1,
      jobTitle2,
      compName2,
      location2,
      startDate2,
      endDate2,
      summary2) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('JobTitle1', jobTitle1);

    prefs.setString('CompName1', compName1);
    prefs.setString('CompLocation1', location1);
    prefs.setString('CompStartDate1', startDate1);
    prefs.setString('CompEndDate1', endDate1);
    prefs.setString('Summary1', summary1);
    prefs.setString('JobTitle2', jobTitle2);

    prefs.setString('CompName2', compName2);
    prefs.setString('CompLocation2', location2);
    prefs.setString('CompStartDate2', startDate2);
    prefs.setString('CompEndDate2', endDate2);
    prefs.setString('Summary2', summary2);

    // ignore: deprecated_member_use
    return prefs.commit();
  }

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _jobTitle1 =
          new TextEditingController(text: prefs.getString("JobTitle1"));
      _compName1 =
          new TextEditingController(text: prefs.getString("CompName1"));
      _location1 =
          new TextEditingController(text: prefs.getString("CompLocation1"));
      _startDate1 =
          new TextEditingController(text: prefs.getString("CompStartDate1"));
      _endDate1 =
          new TextEditingController(text: prefs.getString("CompEndDate1"));
      _summary1 = new TextEditingController(text: prefs.getString("Summary1"));
      _jobTitle2 =
          new TextEditingController(text: prefs.getString("JobTitle2"));
      _compName2 =
          new TextEditingController(text: prefs.getString("CompName2"));
      _location2 =
          new TextEditingController(text: prefs.getString("CompLocation2"));
      _startDate2 =
          new TextEditingController(text: prefs.getString("CompStartDate2"));
      _endDate2 =
          new TextEditingController(text: prefs.getString("CompEndDate2"));
      _summary2 = new TextEditingController(text: prefs.getString("Summary2"));
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
      width: _width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Experience:1',
              style: TextStyle(fontSize: 20),
            ),
          ),
          //Job Title 1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                controller: _jobTitle1,
                decoration: InputDecoration(
                    hintText: 'Enter Job Title', border: OutlineInputBorder()),
              ),
            ),
          ),
          //Company name 1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                controller: _compName1,
                decoration: InputDecoration(
                    hintText: 'Enter Company Name',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          //location
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                controller: _location1,
                decoration: InputDecoration(
                    hintText: 'Enter Company Location',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          //start date&endDate
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: _width / 3,
                  child: TextField(
                    controller: _startDate1,
                    decoration: InputDecoration(
                        hintText: 'Enter Start Date',
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: _width / 3,
                  child: TextField(
                    controller: _endDate1,
                    decoration: InputDecoration(
                        hintText: 'Enter end Date',
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
            ],
          ),
          //summary/description
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                maxLines: 5,
                controller: _summary1,
                decoration: InputDecoration(
                    hintText: 'Enter Summary / Description',
                    border: OutlineInputBorder()),
              ),
            ),
          ),

          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Experience:2',
              style: TextStyle(fontSize: 20),
            ),
            //job Title 2
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                controller: _jobTitle2,
                decoration: InputDecoration(
                    hintText: 'Enter Job Title', border: OutlineInputBorder()),
              ),
            ),
          ),
          //Company name 1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                controller: _compName2,
                decoration: InputDecoration(
                    hintText: 'Enter Company Name',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          //location
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                controller: _location2,
                decoration: InputDecoration(
                    hintText: 'Enter Company Location',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          //start date&endDate
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: _width / 3,
                  child: TextField(
                    controller: _startDate2,
                    decoration: InputDecoration(
                        hintText: 'Enter Start Date',
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: _width / 3,
                  child: TextField(
                    controller: _endDate2,
                    decoration: InputDecoration(
                        hintText: 'Enter end Date',
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
            ],
          ),
          //summary/description
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: _width / 1.2,
              child: TextField(
                maxLines: 5,
                controller: _summary2,
                decoration: InputDecoration(
                    hintText: 'Enter Summary / Description',
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Details Saved');
              print(_jobTitle1.text);
              savePersonalInfo(
                  _jobTitle1.text,
                  _compName1.text,
                  _location1.text,
                  _startDate1.text,
                  _endDate1.text,
                  _summary1.text,
                  _jobTitle2.text,
                  _compName2.text,
                  _location2.text,
                  _startDate2.text,
                  _endDate2.text,
                  _summary2.text);
            },
            child: Text('Save Details'),
          ),
        ],
      ),
    );
  }
}
