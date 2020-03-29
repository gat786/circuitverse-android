import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedProject extends StatefulWidget {
  @override
  _DetailedProjectState createState() => _DetailedProjectState();
}

class _DetailedProjectState extends State<DetailedProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Name"),
        elevation: 8.0,
      ),
      body: Material(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Container(
                  padding: EdgeInsets.all(8.0),
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network("https://picsum.photos/250",
                    fit: BoxFit.cover,
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Project Title",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Author Name"),
                    ),

                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Created At"),
                    ),

                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Assignement Id"),
                    ),

                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Author Name"),
                    ),

                  ],
                ),

                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text(details,
                    style: TextStyle(
                      fontSize: 16.0
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  String details = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
      "when an unknown printer took a galley of type and scrambled it to make a type "
      "specimen book. It has survived not only five centuries, but also the leap into "
      "electronic typesetting, remaining essentially unchanged. It was popularised in "
      "the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, "
      "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
}
