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

Widget Contenedor() {
  return Container(
    child: Column(
      children: [],
    ),
  );
}
