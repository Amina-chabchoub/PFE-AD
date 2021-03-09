import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Stack(

        children: <Widget>[
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Text("Search",
              style: TextStyle(
                color: Color(0xff757575),
                fontWeight: FontWeight.w700,
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontSize: 56.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ]
    )

    );
  }
}
