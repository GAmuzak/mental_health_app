// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  
  final Color? iconBg;
  final IconData icon;
  final String mainText;
  final String subtext;
  
  const Exercise({super.key, required this.iconBg, required this.icon, required this.mainText, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(color: Colors.white, 
      borderRadius: BorderRadius.circular(10) ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(8),
            child: Icon(icon, color: Colors.white,),),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(mainText,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(subtext,
                style: TextStyle(color: Colors.grey[700], fontSize: 12),
              )
            ],
          ),
          Expanded(child: Align(alignment: Alignment.centerRight,
          child: Icon(Icons.more_horiz))),
        ],
      ),
    );
  }
}