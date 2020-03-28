import 'package:circuitverse/widgets/projects_card.dart';
import 'package:flutter/material.dart';

class ShowcaseProjects extends StatefulWidget {
  @override
  _ShowcaseProjectsState createState() => _ShowcaseProjectsState();
}

class _ShowcaseProjectsState extends State<ShowcaseProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projects"),
      ),
     body: Material(
       child: Column(
         children: <Widget>[
           ProjectDisplayCard(

           )
         ],
       ),
     ),
    );
  }
}
