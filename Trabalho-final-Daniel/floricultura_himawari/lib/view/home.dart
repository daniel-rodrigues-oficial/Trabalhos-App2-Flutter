import 'package:floricultura_himawari/view/busca.dart';
import 'package:floricultura_himawari/view/cadastroUsuario.dart';
import 'package:floricultura_himawari/view/recursos/barraSuperior.dart';
import 'package:floricultura_himawari/view/recursos/menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  State createState()=> new HomeState();
}

class HomeState extends State<Home>{
  BoxDecoration myBoxDecoration(){
    return BoxDecoration(
      border: Border.all(
        color: Colors.grey.shade900,
        //width: 0.1
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*===================================== Barra de Titulo ================================*/
      appBar: BarraSuperior(),

      /*===================================== Menu   ==========================================*/
      drawer: MenuDrawer(),

      /*===================================== body  ==========================================*/
       body: Stack(
          children: [
             /*===================================== Imageem  ==========================================*/
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("img/fotos/fundo.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Text(
                         "Flores Fantasticas",
                         style: TextStyle(fontSize: 30,color: Color(0xffcf0057), fontWeight: FontWeight.bold),
                       ),
                     ],
                  ),
                  SizedBox(height: 30,),//espaçamento
                 /*===================================== Row superior ==========================================*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Builder(
                        builder: (BuildContext context){
                          return ElevatedButton(
                             child: Container(
                               //decoration: myBoxDecoration(),
                               width: 150,
                               height: 150,
                              
                               //padding: EdgeInsets.all(12),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   FaIcon(
                                     FontAwesomeIcons.search,
                                     size: 18,
                                     color: Colors.white,
                                   ),
                                   Text(
                                     
                                     "Consultar \nCatalogo",
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 18
                                     ),
                                     ),
                                 ],
                               ),
                             ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> new Busca()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0x50044642)//11e0c7 03706a
                            ),
                          );
                        }
                      ),
                      /*================================= Botão 2 ====================================*/
                       new Builder(
                        builder: (BuildContext context){
                          return ElevatedButton(
                            
                             child: Container(
                               //decoration: myBoxDecoration(),
                               width: 150,
                               height: 150,
                               //padding: EdgeInsets.all(12),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   FaIcon(
                                     FontAwesomeIcons.plus,
                                     size: 18,
                                     color: Colors.white,
                                   ),
                                   Text(
                                     "Adicionar",
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 18
                                     ),
                                     ),
                                 ],
                               ),
                             ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0x50044642)
                            ),
                          );
                        }
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),//espaçamento
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      new Builder(
                        builder: (BuildContext context){
                          return ElevatedButton(
                             child: Container(
                               //decoration: myBoxDecoration(),
                               width: 150,
                               height: 150,
                               //padding: EdgeInsets.all(12),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   FaIcon(
                                     FontAwesomeIcons.search,
                                     size: 18,
                                     color: Colors.white,
                                   ),
                                   Text(
                                     "Sobre",
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 18
                                     ),
                                     ),
                                 ],
                               ),
                             ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> new Busca()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0x50044642)
                            ),
                          );
                        }
                      ),
                      /*================================= Botão 3 ====================================*/
                       new Builder(
                        builder: (BuildContext context){
                          return ElevatedButton(
                            
                             child: Container(
                              // decoration: myBoxDecoration(),
                               width: 150,
                               height: 150,
                               //padding: EdgeInsets.all(12),
                               child: Row(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                 children: [
                                   FaIcon(
                                     FontAwesomeIcons.plus,
                                     size: 16,
                                     color: Colors.white,
                                   ),
                                   Text(
                                     "Cadastre-se \nPara ficar\npor dentro \nde todas \nas novidades",textAlign: TextAlign.justify,
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontSize: 12,
                                     ),
                                     ),
                                 ],
                               ),
                             ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> CadastroUsuario()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0x50cf0057)
                            ),
                          );
                        }
                      )
                    ],
                  ),
                /*===================================== row Inferior  ==========================================*/
                ],
              ),
            )
          ],
        )
    );
  }//build
}//class hoe state