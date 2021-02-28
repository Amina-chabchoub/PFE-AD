
import 'package:flutter/material.dart';
import 'package:flutter_app1/Experience.dart';
import 'package:flutter_app1/store.dart';

class profil extends StatefulWidget {
  @override
  _profilState createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: Container(

          child: Center(
            child: Column (
              mainAxisAlignment : MainAxisAlignment.center,
              children: [
                Text('Profile',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 50.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
                SizedBox(height: 20.0),
                Text('Amina Chabchoub',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
             SizedBox(height: 100.0),
                FlatButton(
                  onPressed: (){
                    print('salut');
                  },
                  child : Text("Edit Profile",
                   style: TextStyle(
                      fontSize: 14.0,)
                  )),

                FlatButton(
                    onPressed: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=> Experience()));
                    },
                    child : Text("Wishlist",
                        style: TextStyle(
                          fontSize: 14.0 ,)
                    )),
                FlatButton(
                    onPressed: (){
                      print('salut');
                    },
                    child : Text("Code",
                        style: TextStyle(
                          fontSize: 14.0,)
                    )),

                FlatButton(
                    onPressed: (){
                      print('salut');
                    },
                    child : Text("Reclamtion",
                        style: TextStyle(
                          fontSize: 14.0,)
                    )),

                FlatButton(
                    onPressed: (){
                      print('salut');
                    },
                    child : Text("Log out",
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
