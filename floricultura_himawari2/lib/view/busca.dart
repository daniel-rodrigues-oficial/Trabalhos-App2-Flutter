import 'package:floricultura_himawari/model/planta.dart';
import 'package:floricultura_himawari/model/plantaService.dart';
import 'package:floricultura_himawari/view/descricaoPlanta.dart';
import 'package:floricultura_himawari/view/recursos/barraSuperior.dart';
import 'package:floricultura_himawari/view/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Busca extends StatefulWidget{
  @override
  State createState() => new BuscaState();
}
class BuscaState extends State<Busca> {
  BoxDecoration myBoxDecoration(){
    return BoxDecoration(border: Border.all(color: Colors.pink,width: 5.0));
  }
  //objeto da class
  PlantaService service = new PlantaService();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new BarraSuperior() ,

      drawer: new MenuDrawer(),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/fotos/fundo.jpg"),
                fit: BoxFit.cover,
              ),
              
            ),
            child: ListView.builder(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
              itemCount: service.listarPlantas().length,//ajustar
              itemBuilder: (BuildContext context, int i){
                //guarda o objeto do retorno da classe
                Planta  planta = service.listarPlantas().elementAt(i);

                return Container(
                  color: Colors.grey[900],
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
                            planta.foto,
                            height: 75,
                            width: 75,
                            fit: BoxFit.cover,
                          ),
                        ),
                        //nome e descrição da planta
                        Column(
                          children: [
                            
                            Text(planta.nome,
                            style: TextStyle(
                              color: Color(0xffcf0057),
                              fontSize: 24,
                            ),
                            ),
                            SizedBox(height: 10,),
                          ],
                        )
                      ],
                    ),

                    trailing: IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.black,
                        size: 32,
                      ),
                      onPressed: (){
                        // manda para o prefil da planta
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context)=> new DescricaoPlanta(id: planta.id))
                        );
                      },
                    ),
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}