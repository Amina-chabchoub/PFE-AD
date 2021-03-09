import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class MoreInformation extends StatefulWidget {
  @override
  _MoreInformationState createState() => _MoreInformationState();
}

class _MoreInformationState extends State<MoreInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        elevation: 2.0,
      ),
      body:
        Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 15, 200, 0),
              child: Text('More informations',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
               ),
            SizedBox(height: 30),
            Container(
              //margin: EdgeInsets.all(3.0),
              //padding: EdgeInsets.all(1.0),
              alignment: Alignment.center,
              width: 300,
              height: 600,
              decoration: BoxDecoration(
                border:
                Border.all(),
              ),
              child: Text("Hello", style: TextStyle(fontSize: 10)),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 2.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
               // mainAxisSize: MainAxisSize.max,
                children: [



                  RaisedButton(

                      color: Colors.blue,
                      onPressed:(){},
                      child:

                      Text('Order',
                        style: TextStyle(
                          color: Colors.white,
                        ),

                      )
                  ),
                RaisedButton(
                      onPressed:(){},
                      color: Colors.grey[800],
                      child:  Text('Demo',
                        style: TextStyle(
                          color: Colors.white,
                        ),

                      )
                  ),

                ],
              ),
            )
          ],
        ),

    );
  }
}
