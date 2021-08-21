import 'package:flutter/material.dart';
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
              ),
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
          new TextEditingController(text: prefs.getInt("phone").toString());
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
    final _width = MediaQuery.of(context).size.width;
    // final _height = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
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
                onEditingComplete: () {
                  name = nameController.text;
                },
                controller: nameController,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Address', border: OutlineInputBorder()),
                onEditingComplete: () {
                  address = addressController.text;
                },
                controller: addressController,
              ),
              TextField(
                  decoration: InputDecoration(
                      hintText: 'Email', border: OutlineInputBorder()),
                  onEditingComplete: () {
                    email = emailController.text;
                  },
                  controller: emailController),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Phone', border: OutlineInputBorder()),
                onEditingComplete: () {
                  phone = phoneController.text;
                },
                controller: phoneController,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'About', border: OutlineInputBorder()),
                onEditingComplete: () {
                  about = aboutController.text;
                },
                controller: aboutController,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    PersonalData(
                        nameController.text, about, address, email, phone);
                    print('Details saved');
                    savePersonalInfo(
                        nameController.text,
                        addressController.text,
                        emailController.text,
                        int.parse(phoneController.text),
                        aboutController.text);
                  },
                  child: Text('Save Details'),
                ),
              )
            ],
          ),
        ),
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
    String name, String address, email, int phone, about) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('name', name);
  prefs.setString('address', address);
  prefs.setString('email', email);
  prefs.setInt('phone', phone);
  prefs.setString('about', about);
  // ignore: deprecated_member_use
  return prefs.commit();
}
