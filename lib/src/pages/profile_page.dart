import 'package:flutter/material.dart';
import 'package:animated_card/animated_card.dart';
import 'package:image_picker/image_picker.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.deepOrange,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications_none),
              onPressed: () {},
            ),
          ],
          title: Text(
            "Meu Perfil",
            style: TextStyle(fontSize: 24.0),
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
                title: Text(
                  "Minhas Ordens",
                  style: TextStyle(color: Colors.deepOrange),
                ),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.deepOrange,
                ),
                onTap: () {
                  print("Minhas Ordens");
                },
              ),
              ListTile(
                title: Text(
                  "Minha Conta",
                  style: TextStyle(color: Colors.deepOrange),
                ),
                leading: Icon(
                  Icons.person,
                  color: Colors.deepOrange,
                ),
                onTap: () {
                  print("Minha Conta");
                },
              ),
              ListTile(
                title: Text(
                  "Sobre nós",
                  style: TextStyle(color: Colors.deepOrange),
                ),
                leading: Icon(
                  FeatherIcons.users,
                  color: Colors.deepOrange,
                ),
                onTap: () {},
              ),
              Divider(
                color: Colors.deepOrange,
              ),
              ListTile(
                title: Text(
                  "Centro de Ajuda",
                  style: TextStyle(color: Colors.deepOrange),
                ),
                leading: Icon(Icons.help, color: Colors.blue),
                onTap: () {
                  print("Centro de Ajuda");
                },
              ),
              ListTile(
                title: Text(
                  "Definições",
                  style: TextStyle(color: Colors.deepOrange),
                ),
                leading: Icon(
                  FeatherIcons.settings,
                  color: Colors.deepOrange,
                ),
                onTap: () {
                  print("Definições");
                },
              ),
              ListTile(
                title: Text(
                  "Termos de Uso e Licença",
                  style: TextStyle(color: Colors.deepOrange),
                ),
                leading: Icon(
                  FeatherIcons.file,
                  color: Colors.deepOrange,
                ),
                onTap: () {
                  print("Termos de Uso e Licença");
                },
              ),
              ListTile(
                title: Text(
                  "Terminar a Sessão",
                  style: TextStyle(color: Colors.deepOrange),
                ),
                leading: Icon(
                  FeatherIcons.logOut,
                  color: Colors.deepOrange,
                ),
                onTap: () {
                  print("");
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
                  child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/lunch.jpeg"),
                        radius: 70,
                        child: FloatingActionButton(
                          tooltip: 'Pick Image',
                          child: Icon(Icons.add_a_photo),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Horacio Vilanculo Junior",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  color: Colors.deepOrangeAccent,
                  child: ListTile(
                    leading: Icon(FeatherIcons.user, color: Colors.white,),
                    title: Text(
                      "Horacio Vilanculo Junior",
                      style: TextStyle(
                          fontSize: 18.0, fontFamily: "Source Sans Pro",
                          color: Colors.white,
                          ),
                    ),
                    
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  color: Colors.deepOrangeAccent,
                  child: ListTile(
                    leading: Icon(FeatherIcons.mail, color: Colors.white,),
                    title: Text(
                      "vilanculo.95@gmail.com",
                      style: TextStyle(
                          fontSize: 18.0, fontFamily: "Source Sans Pro",
                          color: Colors.white,
                          ),
                    ),
                  ),
                
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  color: Colors.deepOrangeAccent,
                  child: ListTile(
                    leading: Icon(FeatherIcons.phoneCall, color: Colors.white,),
                    title: Text(
                      "+258 84 8396 068",
                      style: TextStyle(
                          fontSize: 18.0, fontFamily: "Source Sans Pro",
                          color: Colors.white,
                          ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  color: Colors.deepOrangeAccent,
                  child: ListTile(
                    leading: Icon(FeatherIcons.mapPin, color: Colors.white,),
                    title: Text(
                      "Rua Correia de Brito\nBairro da Ponta-Gea\n Casa nº 928",
                      style: TextStyle(
                          fontSize: 18.0, fontFamily: "Source Sans Pro",
                          color: Colors.white,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
