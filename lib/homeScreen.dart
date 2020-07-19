import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petappui/configuration.dart';
import 'package:petappui/detailsScreen1.dart';
import 'package:petappui/detailsScreen2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double x = 0, y = 0, z = 0, scaleFactor = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AnimatedContainer(
        transform: Matrix4.translationValues(x, y, 0)..scale(scaleFactor),
        duration: Duration(
          milliseconds: 250,
        ),
        color: Colors.grey[200],
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              x = 0;
                              y = 0;
                              z = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              x = 230;
                              y = 150;
                              scaleFactor = .6;
                              isDrawerOpen = true;
                            });
                          },
                          icon: Icon(Icons.menu),
                        ),
                  Column(
                    children: <Widget>[
                      Text("Location"),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Text("Ukraine"),
                        ],
                      ),
//                  CircleAvatar(),
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.search,
                    ),
                    Text("Search pet to adopt"),
                    Icon(
                      Icons.settings,
                    ),
                  ],
                ),
              ),
              Container(
                height: 120.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(10.0)),
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(left: 20),
                            child: Image.asset(
                              categories[index]['iconPath'],
                              height: 50,
                              width: 50,
                              color: Colors.grey[700],
                            ),
                          ),
                          Text(categories[index]['name']),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 240,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[300],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 40.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailsScreen1();
                              }));
                            },
                            child: Align(
                              child: Hero(
                                tag: 1,
                                child: Image.asset("images/pet-cat2.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        margin: EdgeInsets.only(top: 60.0, bottom: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Sola",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                                Icon(
                                  FontAwesomeIcons.cat,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            FittedBox(child: Text("American Shorthair cat")),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "3 years old",
                              style: TextStyle(color: Colors.grey[350]),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.location_on),
                                Text(
                                  "Distance 3.6 km",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 240,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: shadowList,
                            ),
                            margin: EdgeInsets.only(top: 40.0),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailsScreen2();
                              }));
                            },
                            child: Align(
                              child: Hero(
                                  tag: 2,
                                  child: Image.asset("images/pet-cat1.png")),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Firri",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                                Icon(
                                  FontAwesomeIcons.cat,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text("Savannah cat"),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "2 years old",
                              style: TextStyle(color: Colors.grey[350]),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.location_on),
                                Text(
                                  "Distance 5.2 km",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 60.0, bottom: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
