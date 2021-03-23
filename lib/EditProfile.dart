import 'package:flutter/material.dart';
import 'package:flutter_app1/screens/login_screen.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();

  void _submit(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
       appBar: AppBar(
         backgroundColor: Colors.blueAccent.withOpacity(0.1),
       ),
        body: Center(
            child: Stack(
              children:[
                Container(

                  margin: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                  child: Text(' Edit Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                    ),),

                ),
                Center(
                  child:   Card(
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
                                image: AssetImage('assets/images/logologin.png'),
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
                                      'Update'
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

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),






              ],
            )
        )


    );
  }
}