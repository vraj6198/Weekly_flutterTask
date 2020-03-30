import 'package:flutter/material.dart';
import 'package:flutter_task1/MainScreen.dart';

class NoteList extends StatelessWidget {
  Widget box1({width: 70.0, height: 70.0}) => Container(
        //padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
        //  margin: EdgeInsets.only(left: 36, right: 36),
        width: width,
        height: height,
        color: Colors.blueAccent,
      );
  Widget box2({width: 70.0, height: 70.0}) => Container(
        // padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
        // margin: EdgeInsets.only(left: 36, right: 36),
        width: width,
        height: height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.orangeAccent])),
      );

  Widget box3({width: 70.0, height: 70.0}) => Container(
        // padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
        // margin: EdgeInsets.only(left: 36, right: 36),
        width: width,
        height: height,
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.redAccent,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, true);
                return MainScreen();
              }),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
          margin: EdgeInsets.only(left: 36.0, right: 36.0),
          // color: Colors.white,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  box1(),
                  box2(),
                  box3(),
                ],
              ),
              ImageAssets(),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
                child: TextContainer(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/Flutter.png');
    Image image = Image(image: assetImage, width: 400, height: 400);

    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
      margin: EdgeInsets.only(left: 36, right: 36),

      decoration: BoxDecoration(
          border: Border.all(
        color: Color(0xff000000),
        width: 5,
      )),
      child: image,
      // padding: EdgeInsets.only(top: 16.0, bottom: 16),
      // margin: EdgeInsets.only(left: 36.0, right: 36.0),
    );
  }
}

class TextContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Text('Hello World!',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'Schyler',
                fontStyle: FontStyle.italic,
                color: Colors.orangeAccent,
                backgroundColor: Colors.black,
              )),
        ),
      );
}
