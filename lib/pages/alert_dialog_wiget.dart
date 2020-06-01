import 'package:flutter/material.dart';
import 'package:toast/toast.dart';




class alertDialog extends StatefulWidget {
  alertDialog({Key key}) : super(key: key);

  @override
  _alertDialogState createState() {
    return _alertDialogState();
  }
}

class _alertDialogState extends State<alertDialog> {

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
    return  Scaffold(
      appBar: AppBar(
        title: Text("alertDialog弹出演示"),
      ),
      body: Container(
        child: RaisedButton(
          child: Text(
              "点击显示alertDialog"
          ),
          onPressed: (){
            _alertDialog().then((value){
              print(value);
            });
          },
        ),
      ),
    );
  }


  Future  _alertDialog()async{
    var  result  =await showDialog(
        context: context,
        builder: (context){
          return  AlertDialog(
            title: Text("提示信息"),
            content: Text("您确定要删除吗"),
            actions: <Widget>[
              RaisedButton(
                child: Text("取消"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print("取消");
                  Toast.show("你取消了", context);
                  Navigator.pop(context);
                },
              ),
              RaisedButton(
                child: Text("确定"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print("确定");
                  Toast.show("你确定了", context);
                  Navigator.pop(context,"ok");
                },
              ),
            ],
          );
        }
    );
    print("result   -- >  "+result);
    return result;

  }


}





