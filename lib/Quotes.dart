import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meditation_app/bottom_nav_bar.dart';
import 'package:meditation_app/constants.dart';


class Quotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: 
       AppBar(
           backgroundColor: Colors.white,elevation: 0,
           title: 
           Padding(
             padding: const EdgeInsets.only(right:10),
             child: Text("Motivation Space-Quotes", style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w700),),
           ),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back,size:35,color:kBlueLight,), onPressed: () {  },),
          actions: <Widget>[
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: CircleAvatar(backgroundColor: Colors.white,
    radius: 35.0,
    child: ClipRRect(
      
          child: Image.asset("assets/images/user.png"),
          borderRadius: BorderRadius.circular(30.0),
   )),
           ),
          ],
          

    ),
    body:
    Container(child: Column(children: [
      new Container(child: Center(child:Text("Januray",textAlign:TextAlign.center ,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),))),
           IconButton(
              icon: const Icon(Icons.arrow_back,size:35,color:kBlueLight,), onPressed: () {  },),// Row(children: [
//   new Text("Januray",textAlign:TextAlign.center ,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),
//   )
// ],







// )















    ],),)
       );
    
 
  
  }}