import 'package:flutter/material.dart';




/**
 *
 *  创建 列表dialog
 *
 *
 *
 */

class simpleDialog extends StatefulWidget {
  simpleDialog({Key key}) : super(key: key);

  @override
  _simpleDialogState createState() {
    return _simpleDialogState();
  }
}

class _simpleDialogState extends State<simpleDialog> {
  String  textStr="请选择";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("simpleDialog "),

      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: RaisedButton(
            child: Text(textStr),
            onPressed:(){
              simpleDialog().then((value){
                setState(() {
                  if(!textStr.isEmpty){
                    textStr=value;
                  }
                });
              });

            } ,
          ),
        ),
      ),
    );
  }

 Future  simpleDialog()async{
    var  result=await showDialog(context: context,
        builder:(context){
          return SimpleDialog(
            title: Text("选择角色"),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("旋涡名人"),
                onPressed: (){
                  print("旋涡名人");
                  Navigator.pop(context,"旋涡名人");
                },
              ),
              SimpleDialogOption(
                child: Text("宇智波佐助 "),
                onPressed: (){
                  print("宇智波佐助");
                  Navigator.pop(context,"宇智波佐助");
                },
              ),
              SimpleDialogOption(
                child: Text("千手柱间"),
                onPressed: (){
                  print("千手柱间");
                  Navigator.pop(context,"千手柱间");
                },
              ),
              SimpleDialogOption(
                child: Text("宇智波斑"),
                onPressed: (){
                  print("宇智波斑");
                  Navigator.pop(context,"宇智波斑");
                },
              ),
            ],
          );
        }
    );
    print("result --- > "+result);
    return result;

  }





}