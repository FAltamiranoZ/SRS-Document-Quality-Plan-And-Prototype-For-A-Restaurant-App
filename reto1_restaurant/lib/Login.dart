import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:reto1_restaurant/DiscoverPage.dart';
import 'package:reto1_restaurant/HomePage.dart';

class Login extends StatefulWidget {
  static const String routeName = 'Login';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 2.0,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image(
            image: AssetImage(
                'assets/images/YF.png'
            ),
          ),
        ),
      ),

      body: Center(
          child:   Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height: 30,),

                  Text(
                    "Bienvenido a YourFood.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0,15.0),
                          blurRadius: 15.0
                        ),
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0.0, -10.0),
                          blurRadius: 10.0
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.0,right: 16.0,top: 26.0),
                    child: Column(
                      children: <Widget>[
                        Text("Registro",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins-Bold",
                            letterSpacing: .6
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Text("Correo",
                        //   style: TextStyle(
                        //     fontSize: 18,
                        //     fontFamily: "Poppins-Bold",
                        //     letterSpacing: .6
                        //   ),
                        // ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: "Correo",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0
                            )
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Contraseña",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0
                            )
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),


                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 210,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffDCEDC8),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(30),
                          topLeft: Radius.circular(30)
                      )
                  ),

                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => myHome() ));
                            },
                            child: Container(
                              height: 60,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),

                              child: Center(
                                child: Text(
                                  "Salir"
                                  ,style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushReplacementNamed('DiscoverPage');
                            },
                            child: Container(
                              height: 60,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Color(0xffFF33691E),
                                  borderRadius: BorderRadius.circular(10)
                              ),

                              child: Center(
                                child: Text(
                                  "Registrar"
                                  ,style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                            ),
                          )

                        ],
                      ),

                      SizedBox(height: 25,),

                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                                fontSize: 12
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Al registrarse, estaras de acuerdo con los "
                              ),
                              TextSpan(
                                  text: "términos de polìtica YourFood", style: TextStyle(
                                decoration: TextDecoration.underline,
                              )
                              ),
                            ]
                        ),
                      )
                    ],
                  ),


                ),
              )
            ],
          )
      ),
    );
  }
}