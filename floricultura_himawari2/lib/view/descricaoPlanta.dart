import 'package:floricultura_himawari/model/planta.dart';
import 'package:floricultura_himawari/model/plantaService.dart';
import 'package:floricultura_himawari/view/recursos/barraSuperior.dart';
import 'package:floricultura_himawari/view/recursos/menu.dart';
import 'package:flutter/material.dart';

class DescricaoPlanta extends StatefulWidget {
  //guarda o perfil selecionado
  final int id;

  //construtor com atributo obrigatirio
  DescricaoPlanta({required this.id});

  @override
  _DescricaoPlantaState createState() => _DescricaoPlantaState();
}

class _DescricaoPlantaState extends State<DescricaoPlanta> {
  PlantaService service = new PlantaService();

  @override
  Widget build(BuildContext context) {
    //objeto da classe contato
    Planta planta = service.listarPlantas().elementAt(this.widget.id -1);
    return Scaffold(
      appBar: BarraSuperior(),

      drawer: MenuDrawer(),

      body: SingleChildScrollView(
        child: Container(
            child:  new Container(
          //construir
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsetsDirectional.only(top: 25, bottom: 25),
                  
                ),
                //foto
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   new Image.asset(planta.foto,height: 150,fit: BoxFit.cover,)
                  ],
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 25, bottom: 25),
                  child: Divider(height: 5,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(planta.nome, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24, letterSpacing: 2, wordSpacing: 3,color: Colors.pink),),
                  ],
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 25, bottom: 25),
                  child: Divider(height: 5,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Descrição",
                      style: TextStyle(
                        fontSize: 20, letterSpacing: 2, wordSpacing: 3,color: Colors.pink,fontWeight: FontWeight.bold
                      ),textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(top: 20, bottom: 20),
                  child: Divider(height: 5,),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(planta.descricao,style: TextStyle(
                      fontSize: 16,color: Colors.pink), textAlign: TextAlign.justify,)
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}