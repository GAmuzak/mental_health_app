// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mental_health_app/utils/emoticons.dart';
import 'package:mental_health_app/utils/exercises.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "▲"),
        BottomNavigationBarItem(icon: Icon(Icons.window), label: "▲"),
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: "▲"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "▲"),
      ], backgroundColor: Colors.white),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Arushee!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            "5 July, 2023",
                            style: TextStyle(
                              color: Colors.blue[100],
            
                            ),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,  
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:20),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(12),
                    ),
            
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white,),
                        SizedBox(width: 10),
                        Text("Search", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(Icons.more_horiz, size: 40 ,color: Colors.white,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Emoticons(emoji:"😔", title: "Bad"),
                      Emoticons(emoji:"🙂", title: "Alright"),
                      Emoticons(emoji:"😃", title: "Well"),
                      Emoticons(emoji:"😁", title: "Excellent"),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              child: Center(
                child: Column(
                  children: [
                    Icon(Icons.horizontal_rule_rounded, color: Colors.grey[600], size: 55,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Exercises",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Icon((Icons.more_horiz), size: 40,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ListView(
                        shrinkWrap: true,
                        // padding: EdgeInsets.all(8.0),
                        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                        children: [
                          Exercise(iconBg: Colors.orange[700], icon: Icons.favorite, mainText: "Speaking Skills", subtext: "15 Exercises"),
                          SizedBox(height: 10.0,),
                          Exercise(iconBg: Colors.blue[700], icon: Icons.person, mainText: "Reading Skills", subtext: "5 Exercises"),
                          SizedBox(height: 10.0,),
                          Exercise(iconBg: Colors.pink[700], icon: Icons.menu_book_rounded, mainText: "Writing Skills", subtext: "10 Exercises"),
                        ],
                      )
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}