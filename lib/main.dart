import 'dart:async';

import 'package:circuitverse/pages/detailed_project.dart';
import 'package:circuitverse/pages/showcase_projects.dart';
import 'package:circuitverse/themes/darttheme.dart';
import 'package:circuitverse/themes/lighttheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/listings': (context) => ShowcaseProjects(),
        '/detailed':(context) => DetailedProject(),
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
    );
  }
}

class HomePage extends StatefulWidget {

  setTimeOut(context){
    Timer(Duration(seconds: 3), (){
      print("Timer Function Called");
      Navigator.of(context).pushNamed('/listings').then((value){
        Navigator.of(context).pop();
      });
    });
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Material(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Circuit Verse",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 34.0
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: CircularProgressIndicator()
          )
        ],
      ),
    );
  }




}
