import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'dart:html';
class DropDown extends StatefulWidget {
  DropDown() : super();


  @override
  DropDownState createState() => DropDownState();
}

class Problem {
  int id;
  String name;

  Problem(this.id, this.name);

  static List<Problem> getProblems() {
    return <Problem>[
      Problem(1, 'General'),
      Problem(2, 'Humain Anatomy'),
      Problem(3, 'Astronomie'),

    ];
  }
}





class Company {
  int id;
  String name;

  Company(this.id, this.name);

  static List<Company> getCompanies() {
    return <Company>[
      Company(1, 'Apple'),
      Company(2, 'Honor '),
      Company(3, 'Samsung'),
      Company(4, 'Sony'),
      Company(5, 'LG'),
      Company(6, 'Oppo '),
      Company(7, 'Xiaomi '),
    ];
  }
}

class DropDownState extends State<DropDown> {
  //
  List<Company> _companies = Company.getCompanies();
  List<DropdownMenuItem<Company>> _dropdownMenuItems;
  Company _selectedCompany;
  File _image;


  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCompany = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Company>> items = List();
    for (Company company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Company selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }
  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50
    );

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await  ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50
    );

    setState(() {
      _image = image;
    });
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      new Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.blueAccent.withOpacity(0.1),
        ),
        body:  SingleChildScrollView(
         child :  new Container(
          child: Center(
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
           //   mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(

                  margin: const EdgeInsets.fromLTRB(0, 40, 170, 0),
                  child: Text('Reclamation',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                    ),),

                ),


                SizedBox(
                  height: 50.0,
                ),
                Text("Select a company"),
                SizedBox(
                  height: 20.0,
                ),
                Card(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(120, 0, 120, 0),
                    child:  DropdownButton(
                      value: _selectedCompany,
                      items: _dropdownMenuItems,
                      onChanged: onChangeDropdownItem,

                    ),
                  ),
                ),


                SizedBox(
                  height: 20.0,
                ),
                Text('Selected: ${_selectedCompany.name}'),
                SizedBox(
                  height: 30.0,
                ),

                TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your type of your phone',
                      //  textAlign: TextAlign.center,
                      hintText: 'redemi Poco X3',
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                    decoration: InputDecoration(
                      labelText: "In wich experience you had a problem ?",
                      //  textAlign: TextAlign.center,
                      hintText: 'Humain Anatomy',
                    )
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Description ',
                      //  textAlign: TextAlign.center,
                      hintText: 'I have a problem in the AR scene',

                    )
                ),


                SizedBox(
                  height: 50.0,
                ),


               Center(
                 child: Row(
                   children: [
                     SizedBox(
                       width: 150.0,
                     ),
                     IconButton(
                       icon:Icon(Icons.add),
                       color: Colors.black,
                            onPressed: () {
                              setState(() {
                                _showPicker(context);
                              });
                            },
                     ),
                   CircleAvatar(
                     radius: 55,
                     backgroundColor: Color(0xffFDCF09),
                     child:
                     _image != null
                         ? ClipRRect(
                       borderRadius: BorderRadius.circular(50),
                     child: Image.file(
                       _image,
                       width: 100,
                       height: 100,
                       fit: BoxFit.fill,
                     ),
                   )
                       : Container(
                     decoration: BoxDecoration(
                         color: Colors.grey[200],
                         borderRadius: BorderRadius.circular(50)),
                     width: 100,
                     height: 100,
                     child: Icon(
                       Icons.camera_alt,
                       color: Colors.grey[800],
                     ),
                   ),
                 ),
                 ],
               ),

                 ),

                SizedBox(
                  height: 50.0,
                ),
                SizedBox(
                  width: 300.0,
                  height: 40.0,
                  child : RaisedButton(
                    child: Text(
                        'Send'
                    ),
                    onPressed: ()
                    {
                      _send() ; 
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
      )
    );
  }






  void _send() {}
}


