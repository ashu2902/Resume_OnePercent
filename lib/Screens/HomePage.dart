
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:resume/Screens/BusinessCardList.dart';
import 'package:resume/Screens/EducationInfo.dart';
import 'package:resume/Screens/ExperienceInfo.dart';
import 'package:resume/Screens/PersonalInfo.dart';
import 'package:resume/Screens/ProjectsInfo.dart';
import 'package:resume/Screens/SkillsInfo.dart';
import 'package:resume/Screens/TemplateList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;

    return Scaffold(
      floatingActionButton: SpeedDial(
        buttonSize: 60,
        icon: Icons.add,
        backgroundColor: Colors.white,
        renderOverlay: false,
        foregroundColor: Colors.lightBlue,
        activeIcon: Icons.close,
        children: [
          SpeedDialChild(
            child: Icon(Icons.document_scanner_outlined, color: Colors.lightBlue),
            label: 'Resume',
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Templ1())),
          ),
          SpeedDialChild(
            child: Icon(Icons.card_membership_outlined, color: Colors.lightBlue),
            label: 'Business Card',
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BusinessCardList())),
          )
        ],
      ),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigo, Colors.blue], stops: [0.5, 1.0],
            ),
          ),
        ),
        title: Text('RESUME MAKER'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          )
        ),
        child: OrientationBuilder(builder: (context, orientation){
          return orientation == Orientation.portrait? OrientationPortrait():OrientationLandscape();
        },),
      ),
    );
  }
}

class OrientationLandscape extends StatelessWidget{
  final double sizeOfIcon = 50.0;
  final double fontSize = 16.0;
  final double sizedBoxHeight = 10.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // personal Information
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PersonalInfo()));
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.profile_circled,size: sizeOfIcon,
                      color: Colors.white,),
                    SizedBox(height: sizedBoxHeight),
                    Text('Personal Information',style: TextStyle(fontSize: fontSize,
                        color: Colors.white),)
                  ],
                ),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),),
            ),
            // education and experience
            Row(
              children: [
                // Education
                Expanded(child: Container(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => EducationInfo()));
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(CupertinoIcons.book,size: sizeOfIcon,
                            color: Colors.white,),
                          SizedBox(height: sizedBoxHeight),
                          Text('Education',style: TextStyle(fontSize: fontSize,
                              color: Colors.white),)
                        ],
                      ),
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                )),
                // Experience
                Expanded(child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ExperienceInfo()));
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.desktopcomputer,size: sizeOfIcon,
                          color: Colors.white,),
                        SizedBox(height: sizedBoxHeight),
                        Text('Experience',style: TextStyle(fontSize: fontSize,
                            color: Colors.white),)
                      ],
                    ),
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                    ),
                  ),
                )),
              ],
            ),
            //Projects and Skill
            Row(
              children: [
                //skills
                Expanded(child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SkillsInfo()));
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.star,size: sizeOfIcon,
                          color: Colors.white,),
                        SizedBox(height: sizedBoxHeight),
                        Text('Skills',style: TextStyle(fontSize: fontSize,
                            color: Colors.white),)
                      ],
                    ),
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                    ),
                  ),
                )),
                // project
                Expanded(
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => ProjectsInfo()));
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(CupertinoIcons.square_list,size: sizeOfIcon,
                              color: Colors.white,),
                            SizedBox(height: sizedBoxHeight),
                            Text('Projects',style: TextStyle(fontSize: fontSize,
                                color: Colors.white),)
                          ],
                        ),
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                        ),
                      )
                  ),
                ),

              ],
            ),
            // Bottom Button
          ],
        ),
      ),
    );
  }
}
class OrientationPortrait extends StatelessWidget {
  const OrientationPortrait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // personal Information
        GestureDetector(
          onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => PersonalInfo()));
          },
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.profile_circled,size: 80.0,
            color: Colors.white,),
            SizedBox(height: 15.0),
            Text('Personal Information',style: TextStyle(fontSize: 20.0,
            color: Colors.white),)
          ],
        ),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
        ),),
        ),
        // education and experience
        Row(
          children: [
            // Education
            Expanded(child: Container(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => EducationInfo()));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(CupertinoIcons.book,size: 80.0,
                        color: Colors.white,),
                      SizedBox(height: 15.0),
                      Text('Education',style: TextStyle(fontSize: 18.0,
                          color: Colors.white),)
                    ],
                  ),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                ),
              ),
            )),
           // Experience
            Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ExperienceInfo()));
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.desktopcomputer,size: 80.0,
                      color: Colors.white,),
                    SizedBox(height: 15.0),
                    Text('Experience',style: TextStyle(fontSize: 18.0,
                        color: Colors.white),)
                  ],
                ),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),
              ),
            )),
          ],
        ),
        //Projects and Skill
        Row(
          children: [
            //skills
            Expanded(child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SkillsInfo()));
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.star,size: 80.0,
                      color: Colors.white,),
                    SizedBox(height: 15.0),
                    Text('Skills',style: TextStyle(fontSize: 18.0,
                        color: Colors.white),)
                  ],
                ),
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),
              ),
            )),
         // project
            Expanded(
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ProjectsInfo()));
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.square_list,size: 80.0,
                          color: Colors.white,),
                        SizedBox(height: 15.0),
                        Text('Projects',style: TextStyle(fontSize: 18.0,
                            color: Colors.white),)
                      ],
                    ),
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                    ),
                  )
              ),
                ),

          ],
        ),
         // Bottom Button
      ],
    );
  }
}
