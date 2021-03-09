
import 'package:flutter/material.dart';
import 'package:flutter_app1/dialogs/exit_code.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DialogHelper {
  static  openAddEntryDialog(context) {
    Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new ExitConfirmation();
        },
        fullscreenDialog: true
    ));
  }

  static  exit(context) => showDialog(context: context, builder: (context)=> ExitConfirmation());


}