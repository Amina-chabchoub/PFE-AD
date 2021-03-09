import 'package:flutter/material.dart';

class Mode extends StatefulWidget {
  final List _experienceeducative =[
    "Astronomie",
    "Anatomie"
  ];
  @override
  _ModeState createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  final title = 'Mode';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(title,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black)
          ),
        ),
      ),
    );
  }
}
