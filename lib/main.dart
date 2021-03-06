import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Notifi.dart';
import 'package:flutter_app1/Experience.dart';
import 'package:flutter_app1/profil.dart';
import 'package:flutter_app1/store.dart';
import 'package:path/path.dart';
import 'Cart.dart';
import 'Settings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


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
    Notifi(),
    Store(),
    Cart(),
    profil(),

  ];

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: Colors.grey[800].withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Column(
          children: [

            Center(
              //child: Center(
                child: Image(
                  image: AssetImage('assets/images/LOGO.png'),
       // width: 30,
            height: 20,
      ),
              //),
            ),

          ],
        ),
        actions: [
          IconButton(
            icon:Icon(Icons.settings_applications),
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
            icon: Icon(Icons.shopping_cart_outlined),
            title: Text('Carte'),
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


