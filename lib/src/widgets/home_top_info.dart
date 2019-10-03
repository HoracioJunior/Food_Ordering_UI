import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  final textstyle = TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.deepOrange);
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Quital, Vai?", style: textstyle),
                    Text("Faça o teu pedido!", style: textstyle)
                          ],
                      ),
                      IconButton(
                      icon: Icon(Icons.notifications_none,size: 40.0, color: Colors.blueAccent), 
                      onPressed: () {
                        print("Notificacao");
                      }
                      ),
                    //Icon(Icons.notifications_none, size: 40.0, color: Colors.blueAccent),
                  ],
                ),
    );
  }
  
}