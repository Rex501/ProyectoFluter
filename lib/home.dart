import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_progra3/description_place.dart';

class MyHome extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    final descriptionPlace = Container
    (
      margin: EdgeInsets.only
      (
        top: 250,
        left: 30,
        right: 20
      ),
      child: DescriptionPlace
      (
          "Incachaca "
      ),
    );

    return Scaffold
    (
      appBar: AppBar
      (
        title: Text
        (
          "My Places"
        ),
      ),
      body: Stack
      (
        children:
        [
          descriptionPlace
        ],
      ),
    );
  }
}