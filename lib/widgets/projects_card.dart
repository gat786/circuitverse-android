import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectDisplayCard extends StatefulWidget {
  @override
  _ProjectDisplayCardState createState() => _ProjectDisplayCardState();
}

class _ProjectDisplayCardState extends State<ProjectDisplayCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: InkWell(
          onTap: (){
            print("On Tap executed");
          },
          child: Container(
            height: 250.0,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width - 20,
                  child: Image.network("https://dummyimage.com/600x400/000/fff",
                    fit: BoxFit.fill,
                  ),
                ),


                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0,left: 8.0,),
                    child: Text("Header of the Project",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text("This is a basic description of the project would contain"
                      "This doesnt represent the whole content and may be more better if you "
                      "would read the whole description",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.black54
                    ),
                  ),
                ),
              ],
            ),

          ),
        ),
        elevation: 4.0,
      ),
    );
  }
}
