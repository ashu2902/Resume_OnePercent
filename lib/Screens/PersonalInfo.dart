import 'package:flutter/material.dart';
import 'package:resume/Screens/HomePage.dart';
import 'package:resume/Widgets/ProfilePic.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    // final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text('Personal Information'),
        ),
        body: Container(
          height: _height,
          child: ListView(
            children: [
              TextInputs(),
            ],
          ),
        ));
  }
}

class TextInputs extends StatefulWidget {
  const TextInputs({Key? key}) : super(key: key);

  @override
  _TextInputsState createState() => _TextInputsState();
}

class _TextInputsState extends State<TextInputs> {
  var name = '';
  TextEditingController nameController = TextEditingController();
  var address = '';
  TextEditingController addressController = TextEditingController();
  var email = '';
  TextEditingController emailController = TextEditingController();
  var phone = '';
  TextEditingController phoneController = TextEditingController();
  var about = '';
  TextEditingController aboutController = TextEditingController();

  Future<Null> getSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nameController = new TextEditingController(text: prefs.getString("name"));
      addressController =
          new TextEditingController(text: prefs.getString("address"));
      emailController =
          new TextEditingController(text: prefs.getString("email"));
      phoneController =
          new TextEditingController(text: prefs.getString("phone"));
      aboutController =
          new TextEditingController(text: prefs.getString("about"));
    });
  }

  @override
  void initState() {
    super.initState();
    getSharedPrefs();
  }

  @override
  Widget build(BuildContext context) {
    final space = SizedBox(
      height: 5,
    );
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    // final _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Enter Your Personal Information',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15,),
          TextField(
            decoration: InputDecoration(
              hintText: 'Name',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.account_circle_outlined),
            ),
            onEditingComplete: () {
              name = nameController.text;
            },
            controller: nameController,
          ),
          space,
          TextField(
            decoration: InputDecoration(
              hintText: 'Address',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.home),
            ),
            onEditingComplete: () {
              address = addressController.text;
            },
            controller: addressController,
          ),
          space,
          TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'email@email.com',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
              onEditingComplete: () {
                email = emailController.text;
              },
              controller: emailController),
          space,
          TextField(
            decoration: InputDecoration(
              hintText: 'Phone',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.phone),
            ),
            onEditingComplete: () {
              phone = phoneController.text;
            },
            controller: phoneController,
          ),
          space,
          TextField(
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                hintText: 'About - limit to 5 lines', border: OutlineInputBorder()),
            onEditingComplete: () {
              about = aboutController.text;
            },
            controller: aboutController,
            maxLines: 5,
          ),
          space,
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    PersonalData(
                        nameController.text, about, address, email, phone);
                    print('Details saved');
                    savePersonalInfo(
                        nameController.text,
                        addressController.text,
                        emailController.text,
                        phoneController.text,
                        aboutController.text);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Save Details',
                      style: TextStyle(
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class PersonalData {
  var name;
  var address;
  var email;
  var phone;
  var about;

  PersonalData(this.name, this.about, this.address, this.email, this.phone);
}

Future<bool> savePersonalInfo(
    String name, String address, email, String phone, about) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('name', name);
  prefs.setString('address', address);
  prefs.setString('email', email);
  prefs.setString('phone', phone);
  prefs.setString('about', about);
  // ignore: deprecated_member_use
  return prefs.commit();
}
