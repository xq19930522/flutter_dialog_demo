import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../utils/toast_util.dart';



class toastDialog extends StatefulWidget {
  toastDialog({Key key}) : super(key: key);
  @override
  _toastDialogState createState() {
    return _toastDialogState();
  }
}
class _toastDialogState extends State<toastDialog> {
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
         title: Text("_toastDialogState"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("点击弹出toast"),
              onPressed: _toast,
            ),
            RaisedButton(
              child: Text("调用封装的方法弹出"),
              onPressed:  ()async{
                ToastUtil.showInfo("显示toast");
              },
            )
          ],
        )
      ),

    );
  }
  _toast()async{
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 3,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );

  }




}