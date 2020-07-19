import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customWidget.dart';

class DetailsScreen1 extends StatefulWidget {
  @override
  _PetsDetailsState createState() => _PetsDetailsState();
}

class _PetsDetailsState extends State<DetailsScreen1> {
  @override
  Widget build(BuildContext context) {
    return Custom(
      path: "images/pet-cat2.png",
      text1: "Sola",
      text2: "American Shorthair cat",
      text3: "3 years old",
      distance: "Distance 3.6 km",
      text5:
          "The American Shorthair is a medium-sized cat, but she is a very powerful one. She is heavily muscled and has heavy boning.",
      tagged: 1,
    );
  }
}
