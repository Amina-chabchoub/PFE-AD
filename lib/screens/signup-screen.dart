import 'package:flutter/material.dart';
import 'package:flutter_app1/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();
  void _submit(){}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.blue[800],
        //backgroundColor: Colors.indigo[800],
       appBar: AppBar(
         backgroundColor: Colors.blueAccent.withOpacity(0.1),
       ) ,
        body:SingleChildScrollView(
       child :
            Column(
              children: [
                SizedBox(height:  5),
                Stack(
                alignment: Alignment.bottomLeft,
                 children:[
                   Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      height: 550,
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
                                //width: 50,
                                height: 60,
                              ),
                              //name
                             TextFormField(
                                 decoration: InputDecoration(labelText: 'Your name'),
                               keyboardType: TextInputType.text,
                               validator: (value)
                               {
                                 if(value.isEmpty)
                                 {
                                   return 'invailed name' ;
                                 }
                                 return null ;
                               },
                               onSaved: (value){},
                              ),
                              //number
                            TextField(
                            decoration: new InputDecoration(labelText: "Enter your number"),
                            keyboardType: TextInputType.number,

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
                                controller: _passwordController ,
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
                              //Confirm Password
                              TextFormField(
                                decoration: InputDecoration(labelText: 'Confirm Password'),
                                obscureText: true,
                                validator: (value)
                                {
                                  if(value.isEmpty || value != _passwordController.text)
                                  {
                                    return 'invailed Password' ;
                                  }
                                  return null ;
                                },
                                onSaved: (value){},
                              ),
                              SizedBox(height: 50),
                              //button
                              SizedBox(
                               width: 300.0,
                               height: 40.0,
                                child :
                                RaisedButton(
                                   child: Text(
                                    'sign-up'
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
                              Positioned(
                                  child:
                                  Row(
                                    children: [
                                      SizedBox(width: 50),
                                      Text("Already have an account ?",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            // fontWeight: FontWeight.bold
                                          )),
                                      FlatButton(
                                        child: Text('Login',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold ,
                                              color: Colors.blueAccent,
                                            )),
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                                        },
                                      )
                                    ],
                                  )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ),
              ],
            ),
                SizedBox(height: 40),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Let's Get Started!",
                      style: TextStyle(
                        color : Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 30.0,
                      ),
                    )),
                SizedBox(width: 40),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Create a new account",
                      style: TextStyle(
                        color : Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Roboto",
                        fontStyle: FontStyle.normal,
                        fontSize: 20.0,
                      ),
                    )),


              ],
            ),
        ),
    );
  }
}
