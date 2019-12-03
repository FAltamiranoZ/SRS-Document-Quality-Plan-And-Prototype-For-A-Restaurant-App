import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppCard extends StatefulWidget{
  final Widget child;
  final Border borderStyle;
  final Color boxShadowColor;
  AppCard({@required this.child, this.borderStyle, this.boxShadowColor});

  _AppCardState createState() => new _AppCardState ( );

}

class _AppCardState extends State <AppCard> {
  Widget build (BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 48.0,
          
        ),
        new Card(
          margin: EdgeInsets.all(20.0),
          color: Colors.white,
          child: new Container(
            padding: EdgeInsets.all(20.0),
            child: widget.child,
            decoration: new BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color:  Colors.black,
                width: 2,
              ),
              boxShadow: [
                new BoxShadow(
                  color: Colors.black,
                  offset: new Offset(10.0,10.0),
                )
              ] 
            ),
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: InputDecoration(
            hintText: "Email",
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
          ),
        ),
        TextFormField(
          autofocus: false,
          initialValue: "Password",
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Password",
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0)
            )
          ),
        ),
      ],
    );
  }
}