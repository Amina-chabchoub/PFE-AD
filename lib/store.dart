import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/MoreInformation.dart';
import 'package:flutter_app1/Wishlist.dart';

import 'About.dart';
import 'Experience.dart';
import 'Settings.dart';
import 'helper/dialogHelper.dart';



class Store extends StatefulWidget {
  final List _experienceeducative =[
    "Astronomie",
    "Anatomie"
  ];
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  final title = 'Store';
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        body:SingleChildScrollView(
         child:  GridView.count(
          crossAxisCount: 1,
          children: List.generate(cours.length, (index) => Center(child:
          GridTile(
            child: Center(
              child: Stack(
                alignment: Alignment.bottomLeft,

                children:[
                  Image(
                    image: AssetImage(cours[index].imglink),
                  ),

                    Positioned(
                      top: 250,
                      left: 10,
                      //right: 150,
                      child: Text(cours[index].titile,
                        style: TextStyle(
                          color : Colors.grey[50],
                          fontWeight: FontWeight.w700,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  Positioned(
                    top: 300,
                    left: 200,
                   // right: 150,
                    child: Text(cours[index].prix,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 200,
                    // right: 150,
                    child: Text(cours[index].oldPrice,

                      style: TextStyle(
                        decoration : TextDecoration.lineThrough,color : Colors.grey[50],
                      //  color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Positioned(
                    top: 270,
                    left: 10,
                    //right: 150,
                    child:
                   // Image(
                     // image: AssetImage('assets/store/Hearts.png'),
                    Image.asset('assets/store/Hearts.png'),
                    width: 180,
                    height: 80,

                    ),

                    //),
                  Positioned(
                    top: 320,
                    left: 0,
                    //right: 150,
                    child: FlatButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MoreInformation()));
                        },
                        child : Text("More informations >",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal,
                          fontSize: 20.0,
                        ),
                          textAlign: TextAlign.left,
                        )
                    ),
                  ),
                  Positioned(
                    top: -57,
                    left: 185,
                    //right: 150,
                    //child : Transform.translate(offset:
                    //Offset(50,-20)),
                       child : Container(
                         width: 30,
                         height: 50,
                         margin: EdgeInsets.all(60),
                         //margin: EdgeInsets.symmetric(horizontal: 60,vertical: 55),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           color: Colors.white.withOpacity(0.7),
                         ),
                         child:
                       IconButton(
                       icon:Icon(Icons.bookmark_border,size: 25,),
                        color: Colors.black,
                        splashColor: Colors.red,
                  //  alignment: Alignment.centerLeft,
                   // tooltip: "Add to wishlist",
                       onPressed:() =>{
                        Navigator.push(context,MaterialPageRoute(builder:(context)=> Wishlist() ) )
                      },
                    ),
                       ),
                  ),

            ]
          )
          )
          ),
          )
          )
                    ),
        )
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

