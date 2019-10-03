import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class ProfilePage extends StatefulWidget{
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: (){},
          ),
        ],
        title: Text("Meu Perfil",
         style: TextStyle(
           fontSize: 24.0
         ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Horacio Vilanculo"),
              accountEmail: Text("jr@villa.co.mz"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/lunch.jpeg"),
                ),
              ),
            ),
            ListTile(
              title: Text("Minhas Ordens", 
              style: TextStyle(color: Colors.deepOrange) ,
              ),
              leading: Icon(Icons.shopping_basket, color: Colors.deepOrange,),
              onTap: (){ print("Minhas Ordens");},
            ),
            ListTile(
              title: Text("Minha Conta", 
              style: TextStyle(color: Colors.deepOrange) ,
              ),
              leading: Icon(Icons.person, color: Colors.deepOrange,),
              onTap: (){ print("Minha Conta");},
            ),
            ListTile(
              title: Text("Sobre nós", 
              style: TextStyle(color: Colors.deepOrange) ,
              ),
              leading: Icon(FeatherIcons.users, color: Colors.deepOrange,),
              onTap: (){},
            ),
            Divider( color: Colors.deepOrange,),
            ListTile(
              title: Text("Centro de Ajuda", 
              style: TextStyle(color: Colors.deepOrange) ,
              ),
              leading: Icon(Icons.help, color: Colors.blue),
              onTap: (){ print("Centro de Ajuda");},
            ),
            ListTile(
              title: Text("Definições", 
              style: TextStyle(color: Colors.deepOrange) ,
              ),
              leading: Icon(FeatherIcons.settings, color: Colors.deepOrange,),
              onTap: (){ print("Definições");},
            ),
            ListTile(
              title: Text("Termos de Uso e Licença", 
              style: TextStyle(color: Colors.deepOrange) ,
              ),
              leading: Icon(FeatherIcons.file, color: Colors.deepOrange,),
              onTap: (){ print("Termos de Uso e Licença");},
            ),
            ListTile(
              title: Text("Terminar a Sessão", 
              style: TextStyle(color: Colors.deepOrange) ,
              ),
              leading: Icon(FeatherIcons.logOut, color: Colors.deepOrange,),
              onTap: (){ print("");},
            ),
          ],
        ),
      ),
    );
  }
}

