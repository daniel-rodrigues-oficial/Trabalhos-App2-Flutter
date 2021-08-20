

import 'package:floricultura_himawari/view/busca.dart';
import 'package:floricultura_himawari/view/cadastroUsuario.dart';
import 'package:floricultura_himawari/view/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuDrawer extends StatelessWidget {
  

  final String usuario = "daniel rodrigues";
  final String email = "danielalcantarapro@gmail.com";
  final String fotoPerfil = "img/fotos/fundo.jpg";

  Text mostrarTitulo (String texto) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: 18,
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          //foto e informações do usuario
          UserAccountsDrawerHeader(
            accountName:  Text(usuario),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipRRect(
                child: Image.asset(fotoPerfil, fit: BoxFit.cover,width: 70,height: 70,),
                borderRadius: BorderRadius.circular(50),
                
              ),
            ),
            //currentAccountPictureSize: Size.square(12),
          ),
          ListTile(
            title: Text("Home"),
            subtitle: Text("Inicio"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(FontAwesomeIcons.home, size: 30,color: Color(0xffcf0057),),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=> Home()));
            },
          ),
          ListTile(
            title: Text("Consultar"),
            subtitle: Text("Consultar Plantas"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(FontAwesomeIcons.seedling, color: Colors.green, size: 30,),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=> Busca()));
            },
          ),
          ListTile(
            title: Text("Inscreva-se"),
            subtitle: Text("Fique por dentro de todas as novidades"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(FontAwesomeIcons.clipboardCheck, color: Color(0xffcf0057),size: 30,),
            onTap: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => CadastroUsuario()));
            },
          ),
          ListTile(
            title: Text("Configurar"),
            subtitle: Text("Settings"),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            leading: FaIcon(FontAwesomeIcons.cog, color: Color(0xffcf0057), size: 30,),
          ),
        ],
      ),
    );
  }
}