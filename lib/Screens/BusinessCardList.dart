import 'package:flutter/material.dart';
import 'package:resume/BusinessCardTemplates/CardTemplate1.dart';
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
                  CardTemplate1.generateText1(
                    '${prefs.getString('name')}',
                    '${prefs.getString('jobTitle')}',
                    '${prefs.getString('companyUrl')}',
                    '${prefs.getString('email')}',
                    '${prefs.getString('phone')}',
                  ),
                  'Business Card - ${prefs.getString('name')}',
                ),),
              );
            }, image: 'assets/card_images/card_template1.jpg', srno: 1)
          ],
        )
      ),
    );
  }
}

class TemplateButton extends StatelessWidget {
  TemplateButton(
      {required this.onPressed, required this.image, required this.srno});

  final onPressed;
  final image;
  final srno;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: this.onPressed,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140,
                child: Image(
                  image: AssetImage(
                    this.image,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(this.srno.toString()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
