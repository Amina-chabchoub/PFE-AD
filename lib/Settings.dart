
import 'package:flutter/material.dart';

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
    return  Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Alien Dimension',
          style: TextStyle(
              color: Colors.black,
          ),),
        ),
        backgroundColor: Colors.grey[400],
      ),

        body: Center(
          child: Container(

            child: Center(
              child: Column (
                mainAxisAlignment : MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100.0),
                  FlatButton(
                      onPressed: (){
                        print('salut');
                      },
                      child : Text("Review App",
                          style: TextStyle(
                            fontSize: 14.0,)
                      )),

                  FlatButton(
                      onPressed: (){
                      },
                      child : Text("Change language",
                          style: TextStyle(
                            fontSize: 14.0 ,)
                      )),
                  FlatButton(
                      onPressed: (){
                        print('salut');
                      },
                      child : Text("Mode",
                          style: TextStyle(
                            fontSize: 14.0,)
                      )),

                  FlatButton(
                      onPressed: (){
                        print('salut');
                      },
                      child : Text("About us",
                          style: TextStyle(
                            fontSize: 14.0,)
                      )),

                ],
              ),
            ),
          ),
        )
    );
  }
}
