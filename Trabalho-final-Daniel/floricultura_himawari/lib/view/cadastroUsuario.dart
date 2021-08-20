import 'package:floricultura_himawari/model/usuario.dart';
import 'package:floricultura_himawari/view/home.dart';
import 'package:floricultura_himawari/view/recursos/barraSuperior.dart';
import 'package:floricultura_himawari/view/recursos/menu.dart';
import 'package:flutter/material.dart';

class CadastroUsuario extends StatefulWidget {
  @override
  State createState() => new CadastroUsuarioState();
}
class CadastroUsuarioState extends State<CadastroUsuario>{

  final TextEditingController campoNome = TextEditingController();
  final TextEditingController campoEmail = TextEditingController();
  final TextEditingController campoSenha = TextEditingController();
  void salvar (){
        
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BarraSuperior(),

      drawer: MenuDrawer(),

      body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/fotos/fundo.jpg"),
                    fit: BoxFit.cover,
                  ),
                )
              ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 50),
                child: new Column(
                  children: [
              /*=================================== text field 1 =====================================*/
                    SizedBox(height: 30,),
                    TextField(
                      controller: campoEmail,
                      decoration: InputDecoration(filled: true, fillColor: Colors.pink,
                        border: OutlineInputBorder(borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                        
                        )
                      ),
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),
                    ),

                    /*=================================== text field 2 =====================================*/
                    SizedBox(height: 30,),
                    TextField(
                      controller: campoNome,
                      decoration: InputDecoration(filled: true, fillColor: Colors.pink,
                        border: OutlineInputBorder(borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                        
                        )
                      ),
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),

                    ),
                    /*=================================== text field 2 =====================================*/
                    SizedBox(height: 30,),
                    TextField(
                      controller: campoSenha,
                      decoration: InputDecoration(filled: true, fillColor: Colors.pink,
                        border: OutlineInputBorder(borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50),
                        
                        )
                      ),
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.white),
                      obscureText: true,obscuringCharacter: "*",
                    ),
                    /*=================================== input Button =====================================*/
                    SizedBox(height: 30,),
                    ElevatedButton(
                      
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff044642),
                        padding: EdgeInsetsDirectional.all(5),
                        
                      ),
                      child: Text("Cadastrar",style: TextStyle(color: Colors.white, fontSize: 20),),
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                      }
                    )
                  ],
                ),
              ),
            ],  
          ),
        ]
      )
    );
  }
}