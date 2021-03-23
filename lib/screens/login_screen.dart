import 'package:flutter/material.dart';
import 'package:flutter_app1/screens/signup-screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  void _submit(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),

            // here the desired height
            child: AppBar(
              automaticallyImplyLeading: true,
              backgroundColor: Colors.blueAccent.withOpacity(0.1),
              title: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new SizedBox(height: 10),
                    new Text(
                      "Welcome back!",
                      style: TextStyle(
                        color : Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                      ),
                    ),
                    new Text(
                      "Sign in to continue",
                      style: TextStyle(
                        color : Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ),
        body: Center(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children:[
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Container(
                      height: 500,
                      width: 400,
                      padding: EdgeInsets.all(20),
                      child: Form(
                        key: _formKey,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/logoauth.png'),
                                fit: BoxFit.cover,
                                //width: 20,
                                height: 60,
                              ),
                              //email
                              TextFormField(
                                decoration: InputDecoration(labelText: 'Email'),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value)
                                {
                                  if(value.isEmpty || !value.contains('@'))
                                  {
                                    return 'invailed email' ;
                                  }
                                  return null ;
                                },
                                onSaved: (value){},
                              ),

                              //password
                              TextFormField(
                                decoration: InputDecoration(labelText: 'Password'),
                                obscureText: true,
                                validator: (value)
                                {
                                  if(value.isEmpty || value.length<=5)
                                  {
                                    return 'invailed Password' ;
                                  }
                                  return null ;
                                },
                                onSaved: (value){},
                              ),

                              SizedBox(height: 40),
                              //button

                              SizedBox(
                                width: 300.0,
                                height: 40.0,
                                child : RaisedButton(
                                child: Text(
                                    'Login'
                                ),
                                onPressed: ()
                                {
                                  _submit();
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: Colors.blue[800],
                                textColor: Colors.white,
                              ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                 SizedBox(height: 50),
                                 SizedBox(width: 140),
                                  Material(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(30.0),
                                            child: Image.asset('assets/images/Facedebook+86e6c.png',
                                                width: 35.0, height: 35.0),
                                          ),),
                                      )
                                  ),
                                  SizedBox(width: 30),
                                  Material(
                                      child: InkWell(
                                        onTap: () {},
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(30.0),
                                            child: Image.asset('assets/images/GOLOGOLO+52eb7.png',
                                                width: 30.0, height: 30.0),
                                          ),),
                                      )
                                  ),
                                ],
                              ),

                                ],
                              )

                          ),
                        ),
                      ),
                    ),
                  ),















                Positioned(
                    top: 500,
                    left: 25,
                    //right: 150,
                    child:
                    Row(
                      children: [
                        SizedBox(width: 40),
                        Text("Don't have an account ?",
                            style: TextStyle(
                                fontSize: 15.0,
                               // fontWeight: FontWeight.bold
                            )),
                        FlatButton(
                          child: Text('Sign up',
                              style: TextStyle(
                                fontSize: 20.0,
                                  fontWeight: FontWeight.bold ,
                                color: Colors.blueAccent,
                              )),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                          },
                        )
                      ],
                    )
                ),





              ],
            )
        )


    );
  }
}
