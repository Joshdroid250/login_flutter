import 'package:flutter/material.dart';
import 'package:practice/main.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Contenedor()],
        ),
      ),
    );
  }
}

AppBar myAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent, // Hace que el fondo del AppBar sea transparente
    elevation: 1, // Elimina la sombra del AppBar
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://www.pixelstalk.net/wp-content/uploads/2016/04/Abstract-minimalist-wallpaper-HD-desktop-download.png"),
          fit: BoxFit.cover,
        ),
      ),
    ),
    leading: BackButton(
      onPressed: () => Navigator.of(context).pop(),
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

Widget Form() {
  return ListView(
    children: [
      Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 10.0, bottom: 0.0),
            child: const Text(
              "Nombre",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'ProductSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          )),
      Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter your Name')),
          )),
      Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 10.0, bottom: 0.0),
            child: const Text(
              "Mail",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'ProductSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          )),
      Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mail',
                    hintText: 'Enter your Mail')),
          )),
      Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 10.0, bottom: 0.0),
            child: const Text(
              "Password",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'ProductSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          )),
      Flexible(
          child: Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your Password')),
          ))
    ],
  );
}

Widget RegisterButtons(){
  return Container(
    padding: EdgeInsets.only(top: 20),
    child: Column(
      children: [
        Flexible(
            child: Container(
              height: 100,
              width: 500,
              margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: TextButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    primary: Colors.blueAccent),
                child: const Text(
                  "Register",
                  style: TextStyle(fontFamily: "ProductSans", color: Colors.white),
                ),
                onPressed: () {},
              ),
            )),
        Flexible(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              child: const Text(
                "or",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'ProductSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            )),
        Flexible(
            child: Container(
              height: 100,
              width: 500,
              margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.blueAccent),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    primary: Colors.white),
                child: const Text(
                  "Google Register",
                  style: TextStyle(
                      fontFamily: "ProductSans", color: Colors.blueAccent),
                ),
                onPressed: () {},
              ),
            )),
      ],
    ),
  );
}

Widget Contenedor() {
  return Container(
    child: Column(
      children: [
        SizedBox(height: 130, child: Flexible(child: hiBox())),
        SizedBox(height: 200, child: Flexible(child: Form())),
        SizedBox(height: 200, child: Flexible(child: RegisterButtons()))],
    ),
  );
}
