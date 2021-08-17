import 'package:floricultura_himawari/view/recursos/barraSuperior.dart';
import 'package:floricultura_himawari/view/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Busca extends StatefulWidget{
  @override
  State createState() => new BuscaState();
}
class BuscaState extends State<Busca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BarraSuperior() ,

      drawer: new MenuDrawer(),

      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
        itemCount: 5,//ajustar
        itemBuilder: (BuildContext context, int i){
          return Container(
            color: Color(0xffcf0057),
            margin: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 5,
            ),
            padding: EdgeInsetsDirectional.all(5),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //foto minhatura
                  new ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "img/fundo.jpg",
                      height: 75,
                      width: 75,
                      fit: BoxFit.cover,
                    ),
                  )
                  //nome e descrição da planta
                ],
              ),

              trailing: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.black,
                ),
                onPressed: (){

                },
              ),
            ),
          );
        }
      ),
    );
  }

}