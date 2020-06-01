import 'package:flutter/material.dart';
import 'pages/alert_dialog_wiget.dart';
import 'pages/mode_bottomdialog.dart';
import 'pages/simple_dialog_widget.dart';
import 'pages/toast_dialog_widget.dart';
import 'dialog/loading_dialog.dart';
import 'pages/loading_widget.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("主页"),
        ),
        body: HomePage(),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}
class _HomePageState extends State<HomePage> {
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
    return Center(
      child:Column(
        children: <Widget>[
          RaisedButton(
            child: Text("_alertDialog"),
            onPressed: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) =>alertDialog(),));
            },
          ),
          RaisedButton(
              child: Text("_simpleDialog"),
              onPressed:(){
                Navigator.of(context).push(new MaterialPageRoute(builder: (context) =>simpleDialog(),));
              }
          ),
          RaisedButton(
            child: Text("_modeBOttomDialog"),
            onPressed: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) =>modeBOttomDialog(),));
            },
          ),
          RaisedButton(
            child: Text("_toast"),
            onPressed: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) =>toastDialog(),));
            },
          ),

          RaisedButton(
            child: Text("loadingdialog"),
            onPressed: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (context) =>LoagingWidget(),));
            },
          ),
        ],

      ) ,
    );

  }
}