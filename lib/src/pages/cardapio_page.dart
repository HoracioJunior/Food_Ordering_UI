import 'package:flutter/material.dart';
import '../widgets/food_category.dart';
import '../widgets/search_field.dart';
import '../widgets/bought_food.dart';
import '../data/food_data.dart';
import '../models/food_model.dart';

class CardapioPage extends StatefulWidget{
  @override
  _CardapioPageState createState() => _CardapioPageState();
}

class _CardapioPageState extends State<CardapioPage>{

   List<Food> _foods = foods;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nosso Cardapio! Faça a sua escolha",
          style: TextStyle(
            color: Colors.deepOrange,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
        centerTitle: true,
      ),
     body: ListView(
            padding: EdgeInsets.only(top:20.0, left: 20.0, right: 20.0),
            children: <Widget>[
              SearchField(),
              SizedBox(height: 20.0),

              FoodCategory(),
              SizedBox(height: 20.0),

              Column(
               children: _foods.map(_buildFoodItens).toList(),
              ),
            ],
          ),
        );
    }
    Widget _buildFoodItens(Food food){
      return Container(
        margin: EdgeInsets.only(bottom: 15.0),
        child: BoughtFoods(
          id: food.id,
          name: food.name,
          price: food.price,
          imagePath: food.imagePath,
          ratings: food.ratings,
          category: food.category,
          details: food.details,
        ),
      );
    } 
   
  }
