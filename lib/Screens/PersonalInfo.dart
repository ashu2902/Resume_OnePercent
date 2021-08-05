import 'package:flutter/material.dart';
import 'package:resume/Widgets/ProfilePic.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Personal Information'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: _height / 5, child: ProfilePic()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextInputs(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextInputs extends StatefulWidget {
  const TextInputs({Key? key}) : super(key: key);

  @override
  _TextInputsState createState() => _TextInputsState();
}

class _TextInputsState extends State<TextInputs> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      width: _width / 1.2,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Name', border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Address', border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Email', border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Phone', border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'About', border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
