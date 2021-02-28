import 'package:flutter/material.dart';

import 'Experience.dart';
class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:
         Row(
        mainAxisAlignment : MainAxisAlignment.center,
        children: [
          FlatButton(
              onPressed: (){},
              child : Text("Store",
                  style: TextStyle(
                    fontSize: 14.0,)
              )),
          FlatButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=> Experience()));
              },
              child : Text("Wishlist",
                  style: TextStyle(
                    fontSize: 14.0,)
              )),
        ],
      ),
    ) ;
  }
}
