
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/Experience.dart';
import 'package:flutter_app1/Wishlist.dart';
import 'package:flutter_app1/helper/dialogHelper.dart';

import 'package:flutter_app1/store.dart';

import 'EditProfile.dart';
import 'Reclamation.dart';
class profil extends StatefulWidget {
  double kSpacing = 20;
  @override
  _profilState createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey[200],
        body:SingleChildScrollView(


          child: Stack(

            children: [
              Container(

                margin: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                child: Text('Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                  ),),

              ),
              Container(
                margin: const EdgeInsets.fromLTRB(40, 100, 40, 0),
                child: Center(
                  child: Row(children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[200],
                      child: Image(
                        image: AssetImage('assets/images/Profile+21f96.png'),
                        fit: BoxFit.cover,
                        width: 20,
                        height: 20,
                      ),
                    ),
                    SizedBox(width: 50.0),
                    Text('Amina Chabchoub',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                      ),)
                  ],

                  ),
                ),


              ),
             Stack(
               children: [
                 Container(

                     margin: const EdgeInsets.fromLTRB(190, 200, 40, 0),
                     child: Row(
                       children: [
                         Align(
                           alignment: Alignment.centerLeft,
                           child: Container(),
                         ),
                         Column(
                           children: [
                             SizedBox(height: 30.0),
                             FlatButton(
                                 onPressed: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => Wishlist()));
                                 },
                                 child : Text("Wishlist",

                                     style: TextStyle(
                                       fontSize: 14.0 ,)
                                 )
                             ),
                             FlatButton(
                                 onPressed: (){
                             DialogHelper.exit(context);
                                 },
                                 child : Text("Code",
                                     style: TextStyle(
                                       fontSize: 14.0,)
                                 )),

                             FlatButton(
                                 onPressed: (){
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => DropDown()));
                                 },
                                 child : Text("  Reclamtion",
                                     textAlign: TextAlign.right,
                                     style: TextStyle(
                                       fontSize: 14.0,)
                                 )),
                             SizedBox(height : 80.0),
                             FlatButton(
                                 onPressed: (){
                                   print('salut');
                                 },
                                 child : Text("Log Out",
                                     textAlign: TextAlign.right,
                                     style: TextStyle(
                                       fontSize: 14.0,)
                                 )),


                           ],

                         ),


                       ],

                     )


                 )

               ],
             ),



            ],

          ),

        )

    ) ;
  }
}
