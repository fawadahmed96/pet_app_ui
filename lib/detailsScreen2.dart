import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customWidget.dart';

class DetailsScreen2 extends StatefulWidget {
  @override
  _PetsDetailsState createState() => _PetsDetailsState();
}

class _PetsDetailsState extends State<DetailsScreen2> {
  @override
  Widget build(BuildContext context) {
    return Custom(
      path: "images/pet-cat1.png",
      text1: "Firri",
      text2: "savannah cat",
      text3: "2 years old",
      distance: "Distance 5.1 km",
      text5:
          "A Savannah cat is a cross between a domestic cat and a serval, a medium-sized, large-eared wild African cat.",
      tagged: 2,
    );
  }
}
