import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BarraSuperior extends AppBar {

  final String rosa = "0xffcf0057";
  BarraSuperior() : super(
    automaticallyImplyLeading: false,//esconde o iconi original
    centerTitle: true,
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: FaIcon(
            FontAwesomeIcons.bars,
          ),
          //Abre o menu
          onPressed: () => Scaffold.of(context).openDrawer(), 
        );
      }
    ),
    title: Text(
      "Floricultura Himawari" ,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 28,
        color: Colors.white
      ),
    ),
    iconTheme: IconThemeData(color: Colors.teal)
  );
}