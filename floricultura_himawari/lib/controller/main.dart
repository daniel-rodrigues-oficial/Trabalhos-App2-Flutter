import 'package:floricultura_himawari/view/home.dart';
import 'package:floricultura_himawari/view/recursos/estilo.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    title: "Floricultura Himawari",

    home: new Home(),

    debugShowCheckedModeBanner: false,

    theme: estilo(),
  )
);