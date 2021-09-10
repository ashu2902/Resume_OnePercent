
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume/Screens/EducationInfo.dart';
import 'package:resume/Screens/ExperienceInfo.dart';
import 'package:resume/Screens/PersonalInfo.dart';
import 'package:resume/Screens/ProjectsInfo.dart';
import 'package:resume/Screens/SkillsInfo.dart';
import 'package:resume/Screens/TemplateList.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
        title: Text('RESUME MAKER'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            children: [
              // personal Information
              Expanded(child: Row(
                children: [
                  // Personal Information
                  Expanded(child: Row(
                    children: [
                      Expanded(
                          child: GestureDetector(
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
                      )),
                    ],
                  )),
                  // Experience and Education
                ],
              )),
              // education and experience
              Expanded(child: Row(
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
              )),
              //Projects and Skill
              Expanded(child: Row(
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
              )),
               // Bottom Button

               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Templ1()));
                 },
                 child: Container(
                   child: Center(
                     child: Text('Template List',style: TextStyle(
                         fontSize: 25,
                     fontWeight: FontWeight.bold,
                     color: Colors.white)),
                   ),
                   color: Colors.indigo,
                   width: double.infinity,
                   margin: EdgeInsets.only(top: 10),
                   height: 75,
                 ),
               )

              // FieldButton(text: 'Personal Information', path: PersonalInfo()),
              // FieldButton(text: 'Education', path: EducationInfo()),
              // FieldButton(text: 'Experience', path: ExperienceInfo()),
              // FieldButton(text: 'Skills', path: SkillsInfo()),
              // FieldButton(text: 'Projects', path: ProjectsInfo()),
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => Templ1()));
              //     },
              //     child: Text('Select Template')),
            ],
          ),
        ),
      ),
    );
  }
}
