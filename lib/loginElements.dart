import 'package:flutter/material.dart';

Widget cuerpo(){
  return Container(

    decoration: const BoxDecoration(
        image:  DecorationImage(image: NetworkImage("https://images4.alphacoders.com/124/thumb-1920-1244079.jpg"),
            fit: BoxFit.cover)
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          name(),
          userField(),
          passwordField(),
          loginButton()
        ],
      ),
    ),
  );
}


Widget name(){
  return Text("Halo login", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),);
}

Widget userField(){
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "User",
          fillColor: Colors.white,
          filled: true,
        ),
      )
  );
}


Widget passwordField(){
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Password",
          fillColor: Colors.white,
          filled: true,
        ),
      )
  );
}


Widget loginButton(){
  return Container(

    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child:  ElevatedButton(
      onPressed: (){
        //TODO FORGOT PASSWORD SCREEN GOES HERE
      },
      child: const Text(
        'Login',
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
    ),
  );
}

