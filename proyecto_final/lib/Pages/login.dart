import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_final/Common/app_card.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super (key:key);

  Widget build (BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: AppCard(
                child: Text("Food ITAM", style: TextStyle(fontSize: 32.0)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}