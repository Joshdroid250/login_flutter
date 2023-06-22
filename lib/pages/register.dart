import 'package:flutter/material.dart';
import 'package:practice/main.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Contenedor()],
        ),
      ),
    );
  }
}

AppBar myAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent, // Hace que el fondo del AppBar sea transparente
    elevation: 1, // Elimina la sombra del AppBar
    flexibleSpace: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://www.pixelstalk.net/wp-content/uploads/2016/04/Abstract-minimalist-wallpaper-HD-desktop-download.png"),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Widget Welcome() {
  return Container(
    margin: EdgeInsets.only(left: 10.0),
    alignment: Alignment.topLeft,
    child: Column(
      children: <Widget>[
        Container(
          child: const Text(
            "Welcome  to Fashion Daily",
            style: TextStyle(
                color: Colors.grey,
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 0.0, top: 20.0),
          alignment: Alignment.centerLeft,
          child: const Text(
            "Register",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.bold,
                fontSize: 40),
          ),
        )
      ],
    ),
  );
}

Widget infoHelp() {
  return Container(
    margin: const EdgeInsets.only(bottom: 80.0, right: 20.0),
    alignment: Alignment.centerRight,
    child: const Text(
      "Help",
      style: TextStyle(
          color: Colors.blueAccent,
          fontFamily: 'ProductSans',
          fontWeight: FontWeight.bold,
          fontSize: 15),
    ),
  );
}

Widget hiBox() {
  return Container(
    padding: EdgeInsets.only(top: 30),
    child: GridView.count(
      crossAxisCount: 2,
      children: <Widget>[Welcome(), infoHelp()],
    ),
  );
}

Widget Contenedor() {
  return Container(
    child: Column(
      children: [SizedBox(height: 130, child: Flexible(child: hiBox()))],
    ),
  );
}
