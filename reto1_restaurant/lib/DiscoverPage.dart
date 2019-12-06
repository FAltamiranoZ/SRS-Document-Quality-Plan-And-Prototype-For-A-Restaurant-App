import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
<<<<<<< HEAD
=======
import 'package:reto1_restaurant/RandomPage.dart';
>>>>>>> develop

class DiscoveryPage extends StatefulWidget {
  static const String routeName = "DiscoverPage";

  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {


  List imageRoutes = [
<<<<<<< HEAD
    'assets/images/food1.jpg',
    'assets/images/food2.jpeg',
    'assets/images/food3.jpg',
=======
    'assets/images/tacosfood.jpg',
    'assets/images/food2.jpeg',
    'assets/images/pizzafood.jpg',
>>>>>>> develop
    'assets/images/food4.jpeg'
  ];

  List imageRoutesPrice = [
<<<<<<< HEAD
    '\$5.99',
    '\$13.50',
    '\$9.00',
    '\$14.30'
  ];

  List imageDescription = [
    'Delectable',
    'Delicious.',
    'Exquisite.',
    'Luscious.'
=======
    '\$50.99',
    '\$130.50',
    '\$90.00',
    '\$140.30'
  ];

  List imageDescription = [
    'Don Manolito',
    'Toldo Rojo',
    'Pizzas Perro Negro',
    'Hotters'
>>>>>>> develop
  ];

  int selectedItem = 0;

  List imageIconsRoutes = ['assets/images/brocheta.png',
    'assets/images/atun.png',
    'assets/images/burrito.png',
    'assets/images/hamburguesa.png',
    'assets/images/pizza.png',
    'assets/images/ramen.png'
  ];

  List imageIconsDescription = [
<<<<<<< HEAD
    'Turkish',
    'Japanese',
    'Mexican',
    'American',
    'Italian',
    'Chinese'
=======
    'Turquesa',
    'Japonesa',
    'Mexicana',
    'Americana',
    'Italiana',
    'China'
>>>>>>> develop
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 2.0,

          title: Padding(
            padding: const EdgeInsets.all(10.0),
<<<<<<< HEAD
            child: Image(
              image: AssetImage(
                  'assets/images/heyo_logo.png'
=======
            child: FlatButton(
              onPressed: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: new Text("Pedido de la semana."),
                      content: new Text("Cortes de carne mixto con guacamole y frijoles."),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text("Rechazar"),
                          onPressed: (){

                            Navigator.of(context).pop();
                          },
                        ),
                        new FlatButton(
                          child: new Text("Pedir"),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RandomPage() ));
                            
                          },
                        ),
                      ],
                    );
                  }
                );
              },
              child: Image(
                image: AssetImage(
                    'assets/images/YF.png'
                ),
>>>>>>> develop
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton.icon(
                onPressed: (){},
                icon: Icon(Icons.explore),
<<<<<<< HEAD
                label: Text("Ecuador")
=======
                label: Text("CDXM, ITAM")
>>>>>>> develop
            )
          ],
        ),

        body:SingleChildScrollView(
          child:  Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                height: 270.0,
                width: double.infinity,
                child: new Swiper(
                  itemBuilder: (BuildContext context, int index){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Stack(
                        children: <Widget>[
                          new Container(
                            height: double.infinity,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(imageRoutes[index],
                                    ),
                                    fit: BoxFit.cover,
                                    colorFilter: new ColorFilter.mode(Colors.black26, BlendMode.multiply)
                                )
                            ),
                          ),
<<<<<<< HEAD
                          new Align(
                            alignment: Alignment.center,
                            child: Text(
                              imageDescription[index],

=======
                          new Center(
                            child: Text(
                              imageDescription[index],
                              textAlign: TextAlign.center,
>>>>>>> develop
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2

                              ),
                            ),
                          )

                        ],
                      ),
                    );
                  },
                  itemCount: imageRoutes.length,
                  viewportFraction: 0.8,
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
<<<<<<< HEAD
                      "Categories",
=======
                      "Categorias",
>>>>>>> develop
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  )
              ),

              SizedBox(height: 20,),
              Container(
                height: 120,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: imageIconsDescription.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 100,
                            width: 100,
                            child: GestureDetector(
                              onTap: (){

                                setState(() {
                                  selectedItem = index;
                                });

                              },
                              child: Material(
                                child: Ink(
                                  decoration: BoxDecoration(
<<<<<<< HEAD
                                      border: Border.all(color: selectedItem==index ? Color(0xffFFDACC):Colors.grey[500], width: 3),
=======
                                      border: Border.all(color: selectedItem==index ? Color(0xffFF33691E):Colors.grey[500], width: 3),
>>>>>>> develop
                                      shape: BoxShape.circle
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(1000.0),
                                    child: Padding(
                                      padding: EdgeInsets.all(11),
                                      child: Image(
                                        image: AssetImage(imageIconsRoutes[index]),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            imageIconsDescription[index],
                            style: TextStyle(
                                fontSize: 15,
<<<<<<< HEAD
                                color: selectedItem==index ? Color(0XFFFF7A48):Colors.grey[500]
=======
                                color: selectedItem==index ? Color(0xffFF33691E):Colors.grey[500]
>>>>>>> develop
                            ),
                          ),
                        ],
                      );
                    }
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Divider(height: 10, color: Colors.grey[400],),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
<<<<<<< HEAD
                      "396 Restaurants",
=======
                      "87 Restaurantes cerca",
>>>>>>> develop
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),

                    FlatButton.icon(
                        onPressed: (){},
<<<<<<< HEAD
                        icon: Icon(Icons.filter_list, color: Color(0XFFFF4C0F)),
                        label: Text(
                          "Filter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0XFFFF4C0F),
=======
                        icon: Icon(Icons.filter_list, color: Color(0xffFF33691E)),
                        label: Text(
                          "Filtrar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFF33691E),
>>>>>>> develop
                              fontSize: 18
                          ),
                        )
                    )
                  ],
                ),
              ),

              Column(
                mainAxisSize: MainAxisSize.min,
                children: imageRoutes
                .asMap()
                .entries.map(
                    (MapEntry map) => products(map.key)
                ).toList(),
              )
            ],
          ),
        )
    );
  }

  Widget products(int index){

    final response = Container(
      height: 250,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),

      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  imageRoutes[index],
                ),
                colorFilter: new ColorFilter.mode(Colors.black54, BlendMode.multiply),
                fit: BoxFit.cover,
              ),

            ),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                imageRoutesPrice[index],
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    color: Colors.white

                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: (){},
                child: Icon(Icons.favorite_border, color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    );

    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,"detail",arguments: imageRoutes);
        print(index);
      },
      child: response,
    );
  }
}


