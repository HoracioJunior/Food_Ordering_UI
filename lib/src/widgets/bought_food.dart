import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class BoughtFoods extends StatefulWidget {
  final String name;
  final String imagePath;
  final int id;
  final String category;
  final double price;
  final double ratings;
  final String details;

  BoughtFoods(
      {this.name,
      this.details,
      this.imagePath,
      this.id,
      this.category,
      this.price,
      this.ratings});

  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  Future<void> popUp() async {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Mais sobre o item",
              style: TextStyle(color: Colors.deepOrange, fontSize: 15.0),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    widget.details.toString(),
                    style: TextStyle(fontSize: 15.0),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.green,
                child: Text(
                  "Fechar",
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(widget.imagePath, fit: BoxFit.cover),
          ),
          FlatButton(
            color: Colors.green,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(5.0),
            splashColor: Colors.green,
            onPressed: () {
              popUp();
            },
            child: Text(
              "Detalhes",
              style: TextStyle(fontSize: 13.5),
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60.0,
              width: 340.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.black12],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter)),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        /*Icon(Icons.star, color:Theme.of(context).primaryColor, size: 16.0)*/
                        SmoothStarRating(
                            allowHalfRating: false,
                            starCount: 5,
                            rating: 3,
                            size: 16.0,
                            color: Colors.green,
                            borderColor: Colors.green,
                            spacing: 0.0),
                        SizedBox(width: 10.0),
                        Text(
                          "(" + widget.ratings.toString() + "Reviews)",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.add_shopping_cart,
                        color: Colors.white, size: 30.0),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      widget.price.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    /*Text("Min order",
                    style: TextStyle(
                      color: Colors.grey
                      ),
                    ),*/
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
