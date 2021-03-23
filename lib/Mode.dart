import 'package:flutter/material.dart';

class Mode extends StatefulWidget {
  Mode() : super();



  @override
  DropDownState createState() => DropDownState();
}
///aa
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

class DropDownState extends State<Mode> {
  //
  List<Problem> _Problems = Problem.getProblems();
  List<DropdownMenuItem<Problem>> _dropdownMenuItems;
  Problem _selectedProblem;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_Problems);
    _selectedProblem = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Problem>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Problem>> items = List();
    for (Problem problem in _Problems) {
      items.add(
        DropdownMenuItem(
          value: problem,
          child: Text(problem.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Problem selectedProblem) {
    setState(() {
      _selectedProblem = selectedProblem;
    });
  }





  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("DropDown Button Example"),
        ),
        body: new Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("In wich experience you had a problem ?"),
                SizedBox(
                  height: 20.0,
                ),
                DropdownButton(
                  value: _selectedProblem,
                  items: _dropdownMenuItems,
                  onChanged: onChangeDropdownItem,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Selected: ${_selectedProblem.name}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
