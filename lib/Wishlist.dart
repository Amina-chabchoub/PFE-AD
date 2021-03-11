import 'package:flutter/material.dart';
import 'package:flutter_app1/store.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Wishlist extends StatelessWidget {
  List<Cour> _listData; //instead of this use your data here;
  bool _favStatus=false; // status to show favorite or not
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: GridView.builder(itemCount: _listData.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          itemBuilder: (context, index) {
            checkFavStatus( _listData[index].titile);
            return Container(height: 100, width: 100,
              child:IconButton(icon: Icon(Icons.favorite,color:_favStatus?Colors.red:Colors.black),
                onPressed: (){setFav(_listData[index].titile,_favStatus);},
              ),
            );
          },
        ),
      ),
    );
  }

  void checkFavStatus(String name)async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var boolValue = prefs.getBool(name);
    if(boolValue==null||boolValue==false){
      _favStatus=false;
    }
    else{
      _favStatus=true;
    }
  }

  Future<void> setFav(String name,bool _currentFavStatus) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(name,!_currentFavStatus);
    setState(() {

    });
  }

  void setState(Null Function() param0) {}
}

class SharedPreferences {
  static getInstance() {}

  void setBool(String name, bool bool) {}

  getBool(String name) {}
}

