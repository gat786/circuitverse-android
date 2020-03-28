import 'package:flutter/material.dart';

class ProjectDisplayCard extends StatefulWidget {
  @override
  _ProjectDisplayCardState createState() => _ProjectDisplayCardState();
}

class _ProjectDisplayCardState extends State<ProjectDisplayCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200.0,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(4.0),
              child:Image.network("https://dummyimage.com/600x400/000/fff",
                height: 130,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(4.0),
              child: Text("I am a child text",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ),
          ],
        ),

      ),
      elevation: 4.0,

    );
  }
}
