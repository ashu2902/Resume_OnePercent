import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  _ProfilePicState createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  var imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              child: imageFile == null
                  ? Container(
                      child: Text('Select Image'),
                    )
                  : Image.file(imageFile)),
          Container(
            child: ElevatedButton(
                onPressed: () => getImage(), child: Text('Add Image')),
          )
        ],
      ),
    );
  }

  Future getImage() async {
    ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 180,
      maxHeight: 180,
    );
    setState(() {
      if (image != null) {
        imageFile = File(image.path);
      } else {
        print('no Image Selected');
      }
    });
  }
}
