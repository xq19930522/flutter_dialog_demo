import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class   ToastUtil{
   static  void   showInfo(String  str)async {
     Fluttertoast.showToast(
         msg: str,
         toastLength: Toast.LENGTH_SHORT,
         gravity: ToastGravity.CENTER,
         timeInSecForIos: 3,
         backgroundColor: Colors.black,
         textColor: Colors.white,
         fontSize: 16.0
     );
   }
}