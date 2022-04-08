
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/Quotes.dart';
import 'package:meditation_app/bottom_nav_bar.dart';
import 'package:meditation_app/calendar.dart';
import 'package:meditation_app/calendar_strip.dart';
import 'package:meditation_app/category_card.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/motivation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Therapy App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: Colors.white),
      ),
      home: DemoApp(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: 
       AppBar(
         backgroundColor: Colors.white,elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.notifications, size: 35,color:kBlueLight,), onPressed: () {  },),
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





         
          
             
        ],),
      body: Stack(
        children: <Widget>[
       
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                 RichText(
                   text: TextSpan(
            text: 'Hello',
            style: TextStyle(color:Color(0xFFFFDDBE),fontSize: 27,fontWeight: FontWeight.bold), /*defining default style is optional */
            children: <TextSpan>[
              TextSpan(
                  text: ' ,Chris', style: TextStyle(color:kTextColor,fontSize: 27,fontWeight: FontWeight.bold))
            ],
              ),
                   ),
             
                  Text(
                    "We’ve missed you.  Have a look at ",
                    style:TextStyle(color: kBlueColor,fontSize: 20,fontWeight: FontWeight.w600 , height: 2.2), 
                        
                  ),
                  Text(
                    "our fresh new content just for you! ",
                    style:TextStyle(color: kBlueColor,fontSize: 20,fontWeight: FontWeight.w600 ), 
                        
                  ),
                  SizedBox(width: 50, height: 15,),
                 
                    Expanded(
                      
                        child: GridView.count(
                          clipBehavior: Clip.antiAlias,
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,      
                          children:
                           <Widget>[
                            
                            CategoryCard(
                              
                              title: "motivation space",
                              Src: "assets/images/motivation.png",
                              color: Colors.white,
                              press: () {
                                Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return motivation();
                              }),
                            );
                              },
                             
                            ),
                            CategoryCard(
                              title: "Quiz evaluation",
                              Src: "assets/images/evaluation.png",
                              press: () {},
                              color: kPink,
                            ),
                            CategoryCard(
                              title: "Chat space",
                              Src: "assets/images/chat.png",
                              press: () {
                               
                              },
                              color: kBlueLight,
                            ),
                            CategoryCard(
                              title: "Weekly plans",
                              Src: "assets/images/weeklyPlan.png",
                              press: () {},
                              color: Colors.white,
                            ),
                          ],
                        ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
      

    );
  }
}
