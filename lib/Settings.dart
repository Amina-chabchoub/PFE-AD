
import 'package:flutter/material.dart';
import 'package:flutter_app1/profil.dart';

import 'About.dart';
import 'Change.dart';
import 'Mode.dart';
import 'Review.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _currentIndex = 0;
  final List _children =[

    About(),
    Mode(),
    Change(),
    Review(),
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      //backgroundColor: Colors.grey[800],
       // backgroundColor: Colors.grey[800],
        //appBar: AppBar(
        //backgroundColor: Colors.grey[50],
        //elevation: 2.0,
        //title: Center(
        //child: Center(
        //child: Image(
      //  image: AssetImage('assets/images/LOGO.png'),
    // width: 30,
    //height: 20,
    //),
    //),
    //),
        //),
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
      ),

        body:SingleChildScrollView(
          child: Stack(
              children: [
          Container(

          margin: const EdgeInsets.fromLTRB(40, 100, 0, 0),
          child: Text('Parameters',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
              letterSpacing: 1.0,
              fontWeight: FontWeight.bold,
            ),),

        ),

        Container(
            margin: const EdgeInsets.fromLTRB(170, 150, 0, 0),
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(height: 70.0),
                    FlatButton(
                        onPressed: (){
                          print('salut');
                        },
                        child : Text("Review App",
                            style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold)
                        )),
                    SizedBox(height: 17.0),
                    FlatButton(
                        onPressed: (){
                        },
                        child : Text("Change language",
                            style: TextStyle(
                                fontSize: 17.0 ,
                                fontWeight: FontWeight.bold)
                        )),
                    SizedBox(height: 17.0),
                    FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Mode()));
                        },
                        child : Text("Mode",
                            style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold)
                        )),
                    SizedBox(height: 17.0),
                    FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
                        },
                        child : Text("About us",
                            style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold)
                        )),



                  ],
                ),
              ],
            )

        ),
       // Container(
         //child : Image(
           // image: AssetImage('assets\images\Web+bb378.png',),
            //fit: BoxFit.cover,
            //width: 20,
            //height: 20,
          //),
        //)
              ],
          )

        ),
    );

  }
}
