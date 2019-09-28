import 'package:flutter/material.dart';
//import 'homescreen.dart';
import 'screen/main_screen.dart';

class App extends StatelessWidget{
  @override
   Widget build(BuildContext context){
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: "Food Ordering",
       theme: ThemeData(
         primaryColor: Colors.deepOrange
       ),
       home: MainScreen(),
     );
   }
}