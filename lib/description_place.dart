import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget
{
  // atributos
  late String textoTitulo
  late int cantidadEstrellas
  late String textoDescripcion

  // constructor
  DescriptionPlace(this.textoTitulo, this.cantidadEstrellas, this.textoDescripcion)


  @override
  Widget build(BuildContext context)
  {
    final titulo = Container
    (
        margin: EdgeInsets.only
        (
          right: 30
        ),
        child: Text
        (
          textoTitulo,
          "Duwi Ella",
          style: TextStyle
          (
            fontSize: 34,
            fontWeight: FontWeight.bold
          ),
        ),
    );
    final estrella = Container
    (
      margin: EdgeInsets.only
      (
          right: 2
      ),
      child: Icon
      (
        Icons.star,
        color: Colors.amber,
      ),
    );
    final estrellaBorde = Container
    (
      margin: EdgeInsets.only
      (
        right: 5
      ),
      child: Icon
      (
        Icons.star_border,
        color: Colors.black54,
      ),
    );

    List<Container> listaEstrellas = [];
    for (int i = 0; i< 5; i++)
    {
      if(i<cantidadEstrellas)
      {
        listaEstrellas.add(estrella);
      }
      else
      {
        listaEstrellas.add(estrellaBorde);
      }
    }
    final filaEstrella = Row
    (
      children: <Widget>
      [
        estrella,
        estrella,
        estrella,
        estrella,
        estrellaBorde,
      ],
    );
    final filaTitulo = Row
    (
      children: <Widget>
      [
        titulo,
        filaEstrella,
      ],
    );
    final descripcion = Container
    (
      margin: EdgeInsets.only
      (
        top: 10
      ),
      child: Text
      (
        "Lorem Ipsum es simplemente texto de relleno de la industria de la impresión y la composición tipográfica. Lorem Ipsum ha sido el texto de relleno estándar de la industria desde el año 1500, cuando un impresor desconocido tomó una galera de tipos y la mezcló para hacer un libro de muestras tipográficas. Ha sobrevivido no solo a cinco siglos, sino también al salto a la composición tipográfica electrónica, permaneciendo esencialmente sin cambios. Se popularizó en la década de 1960 con el lanzamiento de hojas de Letraset que contenían pasajes de Lorem Ipsum y, más recientemente, con software de autoedición como Aldus PageMaker que incluía versiones de Lorem Ipsum.",
        style: TextStyle
        (
          color: Colors.black54
        ),
      ),
    );
    final descriptionPlace = Column
    (
      children: <Widget>
      [
        filaTitulo,
        descripcion,
      ],
    );

  }
}