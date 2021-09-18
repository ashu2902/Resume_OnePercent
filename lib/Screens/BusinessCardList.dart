import 'package:flutter/material.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate1.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate10.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate2.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate3.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate4.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate5.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate6.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate7.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate8.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate9.dart';
import 'package:resume/BusinessCardTemplates/PreviewCardTemplate.dart';
import 'package:resume/Templates/PreviewTemplate.dart';
import 'package:shared_preferences/shared_preferences.dart';
class BusinessCardList extends StatefulWidget {
  const BusinessCardList({Key? key}) : super(key: key);

  @override
  _BusinessCardListState createState() => _BusinessCardListState();
}

class _BusinessCardListState extends State<BusinessCardList> {
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
        title: Text('Business Card Templates'),
      ),
      body: Container(
        child: ListView(
          children: [
            TemplateButton(onPressed: () async {
              SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreviewTemplate(
                  CardTemplate1.generateCardText1(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template1.jpg'),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs =
              await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreviewTemplate(
                  CardTemplate2.generateCardText2(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template2.jpg'),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs =
              await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreviewTemplate(
                  CardTemplate3.generateCardText3(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template3.jpg'),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs =
              await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreviewTemplate(
                  CardTemplate4.generateCardText4(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template4.jpg'),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs =
              await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreviewTemplate(
                  CardTemplate5.generateCardText5(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template5.jpg'),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs =
              await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreviewTemplate(
                  CardTemplate6.generateCardText6(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template6.jpg'),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs =
              await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreviewTemplate(
                  CardTemplate7.generateCardText7(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template7.jpg'),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs =
              await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreviewTemplate(
                  CardTemplate8.generateCardText8(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template8.jpg'),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs =
              await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreviewTemplate(
                  CardTemplate9.generateCardText9(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template9.jpg'),
            TemplateButton(onPressed: () async {
              SharedPreferences prefs =
              await SharedPreferences.getInstance();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PreviewTemplate(
                  CardTemplate10.generateCardText10(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template10.jpg'),

          ],
        )
      ),
    );
  }
}

class TemplateButton extends StatelessWidget {
  TemplateButton(
      {required this.onPressed, required this.image});

  final onPressed;
  final image;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: this.onPressed,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blueGrey,
                height: 150,
                child: Image(
                  image: AssetImage(
                    this.image,
                  ),
                  fit: BoxFit.fitWidth
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
