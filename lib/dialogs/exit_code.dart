import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../store.dart';


class ExitConfirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),

      elevation: 0,
       backgroundColor: Colors.transparent,
      child: _buildChild(context),


    );
  }

  _buildChild(BuildContext context) => Container(
    height: 250,
    width: 500,
     decoration: BoxDecoration(
       color: Colors.white,
       shape: BoxShape.rectangle,
       borderRadius: BorderRadius.all(Radius.circular(12))
     ),
     child: Column(
       children: [
         Center(
           child: AppBar(
             backgroundColor: Colors.grey[800],
             elevation: 2.0,
     ),
     ),
         Container(
           margin: const EdgeInsets.fromLTRB(120, 10, 150, 0),
           child: Text('Code',
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Colors.black,
               fontSize: 15.0,
               letterSpacing: 1.0,
               fontWeight: FontWeight.bold,
             ),
           ),
         ),
            Center(

              child: TextFormField(

                decoration: InputDecoration(
                    labelText: 'Enter your code',
                        //  textAlign: TextAlign.center,
                           hintStyle : TextStyle(color: Colors.black,
                                fontSize: 15.0,
                                letterSpacing: 1.0,
                                fontWeight: FontWeight.bold,
                                   ),

                  )
                ),
            ),

        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.fromLTRB(105, 40, 0, 0),
          child: Row(

            mainAxisSize: MainAxisSize.max,
            children: [
              RaisedButton(
                  color: Colors.green,
                  onPressed:(){},
                child:

                Text('Confirm',
                     style: TextStyle(
                      color: Colors.white,
                      ),

                 )),

            ],
          ),
        )
  ],
  ));


}
