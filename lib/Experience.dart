
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app1/store.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Demo.dart';
import 'MoreInformation.dart';
import 'Reclamation.dart';
import 'Wishlist.dart';

class Experience extends StatefulWidget {
  final List _experienceeducative =[
    "Astronomie",
    "Anatomie"
  ];
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  //get events => null;
  final title = 'Storeee';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // SingleChildScrollView(
      //child:
      GridView.count(
          crossAxisCount: 1,
          children: List.generate(cours.length, (index) => Center(child:
          GridTile(
              child: Center(
                  child: Stack(
                      alignment: Alignment.bottomLeft,

                      children:[
                        Material(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Demo()));
                              },
                              child: Container(
                                child: ClipRRect(
                                  //borderRadius: BorderRadius.circular(30.0),
                                  child:  Image(
                                    image: AssetImage(cours[index].imglink),
                                      width: 500.0, height: 500.0),
                                ),),
                            )
                        ),



                        Positioned(
                          top: 300,
                          left: 70,
                          //right: 150,
                          child: Text(cours[index].titile,
                            style: TextStyle(
                              color : Colors.grey[50],
                              fontWeight: FontWeight.w700,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 30.0,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),

                        Positioned(
                          top: 10,
                          left: 280,
                          //
                          child:
                        Material(
                            child:     IconButton(
                              icon:Icon(Icons.error_outline),
                              color: Colors.red,
                              onPressed:() =>{
                                Navigator.push(context,MaterialPageRoute(builder:(context)=> DropDown() ) )
                              },
                            ),
                        )
                        ),

                      ]


                  )
              )
          ),
          )
          )
      ),


    );
  }
}
class Cour{
  final String titile ;
  final String prix ;
  final String description ;
  final String imglink ;
  final String oldPrice ;
  const Cour({this.titile,this.prix,this.description,this.imglink,this.oldPrice});
}
List<Cour> cours = const<Cour>[
  const Cour(titile: 'Human Anatomy',prix: '67.6dt',description: 'fesf^f',imglink: 'assets/store/Thumb.png',oldPrice: '89.85dt'),
  const Cour(titile: 'Astronomy',prix: '89.9dt',description: 'fzkledz^f',imglink: 'assets/store/Rectangle.png',oldPrice: '119.9dt'),
];





