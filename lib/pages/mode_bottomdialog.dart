import 'package:flutter/material.dart';





class modeBOttomDialog extends StatefulWidget {
  modeBOttomDialog({Key key}) : super(key: key);

  @override
  _modeBOttomDialogState createState() {
    return _modeBOttomDialogState();
  }
}

class _modeBOttomDialogState extends State<modeBOttomDialog> {
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
        title: Text("modeBOttomDialog"),

      ),
      body: Container(
        child: RaisedButton(
          child: Text("分享"
          ),
          onPressed: (){
            _modeBottomDialog().then((value){
              print("value    ---  > "+value  );
            });
          },
        ),
      ),
    );

  }

  Future   _modeBottomDialog()async{
    var  result=await showModalBottomSheet(context: context,
        builder: (context){
          return Container(
            child: Column(
              children: <Widget>[
                ListTile(
                    title: Text("分享到 QQ"),
                    onTap: (){
                      Navigator.pop(context,"分享到 QQ");
                    }
                ),
                ListTile(
                    title: Text("分享到 微信 "),
                    onTap: (){
                      Navigator.pop(context,"分享到 微信");
                    }
                ),
                ListTile(
                    title: Text("分享到 微博"),
                    onTap: (){
                      Navigator.pop(context,"分享到 微博");
                    }
                ),
                ListTile(
                    title: Text("分享到 知乎"),
                    onTap: (){
                      Navigator.pop(context,"分享到 知乎");
                    }
                ),
              ],
            ),
          );
        }
    );
    print("分享 --- > "+result);
   return result;
  }
}