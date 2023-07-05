// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Emoticons extends StatelessWidget {
  
  final String emoji;
  final String title;
  
  const Emoticons({super.key, required this.emoji, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[400],
            borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(18),
            child: Center(child: Text(emoji, style: TextStyle(fontSize: 35),))
        ),
        SizedBox(height: 10,),
        Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),)
      ],
    );
  }
}