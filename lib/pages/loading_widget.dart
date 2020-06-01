import 'package:flutter/material.dart';
import '../dialog/loading_dialog.dart';







class LoagingWidget extends StatefulWidget {
  LoagingWidget({Key key}) : super(key: key);

  @override
  _LoagingWidgetState createState() {
    return _LoagingWidgetState();
  }
}

class _LoagingWidgetState extends State<LoagingWidget> {
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
        title: Text("网络加载loading"),

      ),
      body: Container(
        child: RaisedButton(
          child: Text("点击加载"),
          onPressed: (){
            setState(() {
              showCustomDialog(context);
            });
          },
        ),
      ),
    );
  }
  void showCustomDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return LoadingDialog(text: "加载中");
        });
  }
}