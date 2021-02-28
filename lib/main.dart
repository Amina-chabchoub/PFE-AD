import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Experience.dart';
import 'package:flutter_app1/notification.dart';
import 'package:flutter_app1/profil.dart';
import 'package:flutter_app1/store.dart';
import 'package:path/path.dart';

import 'Settings.dart';


void main() =>
  runApp( MaterialApp(

         home: AminaId()
           ));

class AminaId extends StatefulWidget {
  @override
  _AminaIdState createState() => _AminaIdState();
}

class _AminaIdState extends State<AminaId> {
  int _currentIndex = 0;
  final List _children =[

    Experience(),
    notification(),
    Store(),
    profil(),
  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        title: Center(
          child: Text('Alien Dimension',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon:Icon(Icons.ac_unit),
            color: Colors.black,
            onPressed:() =>{
            Navigator.push(context,MaterialPageRoute(builder:(context)=> Settings() ) )
            },
          ),
        ],
      ),

      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex  ,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 8,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text('Experience'),
            backgroundColor: Colors.grey[600],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            title: Text(' Notification'),
            backgroundColor: Colors.grey[600],
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            title: Text('Store'),
            backgroundColor: Colors.grey[600],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            title: Text('Profil'),
            backgroundColor: Colors.grey[600],
          ),
        ],

        onTap:(index)   {
          setState(() {
            _currentIndex = index;
          });
        } ,

      ),
    );
  }
}


