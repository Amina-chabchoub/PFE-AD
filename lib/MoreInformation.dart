import 'package:flutter/material.dart';
import 'package:flutter_app1/screens/login_screen.dart';
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
        backgroundColor: Colors.blueAccent.withOpacity(0.1),
        elevation: 1.0,
      ),
      body:SingleChildScrollView(
          child: Column(
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
            SizedBox(height: 20),
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
              child:

              Text("Hello", style: TextStyle(fontSize: 10)),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              //width: MediaQuery.of(context).size.width * 2.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
               // mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 50),
                  SizedBox(
                    width: 110.0,
                    height: 40.0,
                    child: RaisedButton(
                      color: Colors.blue,
                      child: Text('Order',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: 110.0,
                    height: 40.0,

                    child: RaisedButton(
                      color: Colors.grey[800],
                      child: Text('Demo',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: (){

                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
