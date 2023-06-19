import 'package:flutter/material.dart';
import 'loginElements.dart';

void main() => runApp(PracticeApp());

class PracticeApp extends StatelessWidget {
  const PracticeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "PracticeApp",
      home: Start(),
    );
  }
}

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[contendor()],
      ),
    );
  }
}


Widget top(){
  return Container(
    margin: EdgeInsets.all(0),
    alignment: Alignment.center,
    child: Image.network('https://www.pixelstalk.net/wp-content/uploads/2016/04/Abstract-minimalist-wallpaper-HD-desktop-download.png') ,
  );
}

Widget Welcome(){
  return Container(
    alignment: Alignment.bottomLeft,
    child: const Text(
      "Welcome to Fashion Daily",
        style:  TextStyle( color: Colors.grey,fontFamily: 'ProductSans', fontWeight: FontWeight.bold, fontSize: 15),
    ),
  );
}

Widget hiText(){
  return Container(
    alignment: Alignment.bottomLeft,
    child: const Text(
        "Sing In",
      style: TextStyle(color: Colors.black, fontFamily: 'ProductSans', fontWeight: FontWeight.bold, fontSize: 40),
    ),
  );
}

Widget infoHelp(){
  return Container(
    alignment: Alignment.centerRight,
    child: const Text(
      "Help",
          style: TextStyle(color: Colors.blueAccent, fontFamily: 'ProductSans', fontWeight: FontWeight.bold, fontSize: 15),
    ),
  );
}



Widget hiBox(){
  return Container(
    margin: EdgeInsets.all(20),
    alignment: Alignment.centerLeft,
    child: Stack(
      children: <Widget> [Welcome(), hiText(), infoHelp()],
    ),
  );
}



Widget contendor(){
  return Container(
   child: Column(
     children: <Widget>[top(), hiBox()],
   ),
  );
}


