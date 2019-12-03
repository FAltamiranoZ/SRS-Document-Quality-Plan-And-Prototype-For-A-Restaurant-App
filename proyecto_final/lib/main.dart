import 'package:flutter/material.dart';
import 'package:proyecto_final/Pages/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  const MyApp({Key key}) : super(key :key);

  Widget build (BuildContext context){
    return MaterialApp(
      title: "Food ITAM",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
    );
  }
}