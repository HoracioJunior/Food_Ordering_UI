import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
          child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal:32.0, vertical: 14.0),
          hintText: "pesquise aqui...",
          prefixIcon:Material(
             //elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0), 
            child: Icon(
              Icons.filter_list,
              color: Colors.deepOrange,
              )
          ) ,
          suffixIcon: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0), 
            child: Icon(
              Icons.search,
              color: Colors.deepOrange,
              ),
          ), 
          border: InputBorder.none,
        ),
      ),
    );
  }
   
}