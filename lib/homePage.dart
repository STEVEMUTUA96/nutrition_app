import 'dart:core';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nutritionapp/detailsPage.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Container(
                  width: 125,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: (){},
                      )
                    ],
                  ),
                ),
               ],
            ),
          ),
          SizedBox(height:25,),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Row(
              children: <Widget>[
                Text(
                  "Healthy",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(width: 10,),
                Text(
                  "Food",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25
                  ),
                )
              ],
            ),
          ),
          SizedBox(height:40),
          Container(
            height: MediaQuery.of(context).size.height - 185,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
            ),
            child: ListView(
              primary: false,
                padding: EdgeInsets.only(left: 25, right: 20),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300,
                    child: ListView(
                      children:[
                        _BuildFoodItem('assets/images/2.jpg', 'ovacado Fresh', '\$20.00'),
                        _BuildFoodItem('assets/images/1.jpg', 'ovacado Fresh', '\$20.00'),
                        _BuildFoodItem('assets/images/1.jpg', 'ovacado Fresh', '\$20.00'),
                        _BuildFoodItem('assets/images/1.jpg', 'ovacado Fresh', '\$20.00'),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 55,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 50,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Icon(
                          Icons.shopping_basket,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                          border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 1
                          ),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                         "Checkout",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white
                          ),
                        ),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 15,
                          )
                        ]
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget _BuildFoodItem(String imgPath, String foodName, String price){
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 15),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(heroTag: imgPath, foodName: foodName,foodPrice: price,)
          ));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children:[
                  Hero(
                    tag: Random().nextInt(678),
                    child: CircleAvatar(
                      backgroundColor: Color(0xFF21BFBD),
                      radius: 30 ,
                      child: CircleAvatar(
                        backgroundImage:AssetImage(imgPath),
                        radius: 28,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        foodName,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey
                        )
                      )
                    ]
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
