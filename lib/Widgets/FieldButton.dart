import 'package:flutter/material.dart';

class FieldButton extends StatelessWidget {
  FieldButton({required this.text, required this.path});
  String text;
  dynamic path;
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        child: Container(
          width: _width / 1.25,
          height: _height / 18,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)),
          child: Center(child: Text(text)),
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => path));
        },
      ),
    );
  }
}
