import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Seconscreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 16.0),
        margin: EdgeInsets.all(100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              width: 400.0,
              height: 70.0,
              child: const Card(
                color: Colors.orangeAccent,
                margin: EdgeInsets.all(0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    "Hello",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 400.0,
              height: 70.0,
              child: const Card(
                color: Colors.orangeAccent,
                margin: EdgeInsets.all(0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    "Hello ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 400.0,
              height: 70.0,
              child: const Card(
                color: Colors.orangeAccent,
                margin: EdgeInsets.all(0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(
                    "Hello",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("Floating Button is Pressed!!");
          debugPrint('FAB Clicked');
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NoteList();
          }));
        },
      ),
    );
  }
}
