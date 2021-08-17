import 'package:floricultura_himawari/view/recursos/barraSuperior.dart';
import 'package:floricultura_himawari/view/recursos/menu.dart';
import 'package:flutter/material.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  State createState() => new CadastroUsuarioState();
}
class CadastroUsuarioState extends State<CadastroUsuario>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),

      drawer: MenuDrawer(),
    );
  }

}