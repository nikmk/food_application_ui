import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapplicationui/animation/FadeAnimation.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        brightness: Brightness.light,
        leading: Icon(null),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_basket, color: Colors.grey),
              onPressed: null)
        ],


      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(horizontal:20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(1, Text('Food Delivery', style: TextStyle(color: Colors.grey[800],fontWeight:FontWeight.bold,fontSize:30,)))
                ,SizedBox(height: 20,),
                Container(

                  height:50 ,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      FadeAnimation(1 , makeCategory(isActive:true ,title:'Pizza')),
                      FadeAnimation(1.3 , makeCategory(isActive:false ,title:'Burgers')),
                      FadeAnimation(1.5 , makeCategory(isActive:false ,title:'Kebab')),
                      FadeAnimation(1.7 , makeCategory(isActive:false ,title:'Shwarma')),
                      FadeAnimation(1.9 , makeCategory(isActive:false ,title:'Desert')),
                    ],
                  ),
                ),
                SizedBox(height:10.0),
                
              ],
            )
            ),
            FadeAnimation(1, Padding(
              padding: EdgeInsets.all(20),
              child: Text('Free Delivery',style: TextStyle(color : Colors.grey[700],fontSize: 20.0 , fontWeight: FontWeight.bold))

            )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FadeAnimation(1.2, makeItem(image : 'assets/foodphotos/pizza1.jpg')),
                    FadeAnimation(1.6, makeItem(image : 'assets/foodphotos/pizza2.jpg')),
                    FadeAnimation(1.9, makeItem(image : 'assets/foodphotos/pizza3.jpg')),
                  ],
                )
              ),
            ),
            SizedBox(height: 30.0,),


          ],
        ),

      ),
    );

    }
  }

Widget makeCategory({isActive , title}){
return AspectRatio(
aspectRatio: isActive ? 3 : 2.5 /1,
  child: Container(
    margin: EdgeInsets.only(right:10),
    decoration: BoxDecoration(
      color: isActive ? Colors.orange[500] : Colors.white ,
      borderRadius: BorderRadius.circular(50.0),

    ),
      child: Align(
        child: Text(title , style: TextStyle(color : isActive ? Colors.white : Colors.yellow[900] , fontSize: 18 , fontWeight:isActive ? FontWeight.bold : FontWeight.w100),),
      ),
  ),
);
}

Widget makeItem({image}){
  return AspectRatio(
    aspectRatio: 1 / 1.2 ,
    child: GestureDetector(

      child: Container(
          margin: EdgeInsets.only(right:20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,

          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.bottomCenter,

               colors:[
               Colors.black.withOpacity(0.4),
               Colors.black.withOpacity(0.1),
              ])
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child:Icon(Icons.favorite,color: Colors.white, size: 40.0,)
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Text("Rs.350" ,style:TextStyle(color:Colors.white, fontSize: 40.0 ,fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0,),
                    Text("Vegetarian Pizza" ,style:TextStyle(color:Colors.white, fontSize: 20.0 ,fontWeight: FontWeight.bold)),

                  ],
                )
              ],
            )
          ),
        )
      ),

    )
  );
}