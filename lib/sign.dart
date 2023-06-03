import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled7/designer.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:ListView(
          children: [
            InkWell(
              onTap:  () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Desin()));
              },
              child: Card(elevation: 5,
                child: ListTile(
                  title: Text("UI Design"),
                  trailing: Icon(
                    Icons.arrow_forward
                  ),
                ),
              ),
            ),
            Card(elevation: 5,
                child: ListTile(
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Desin()));
                  } ,
                  title: Text("Flutter"),
                  trailing: Icon(Icons.arrow_forward),
                ),
            ),
            Card(elevation: 5,
              child: ListTile(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Desin()));
                },
                title: Text("MERN"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      )
    );
  }
}
