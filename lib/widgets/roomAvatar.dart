import 'package:flutter/material.dart';


Widget roomavatar(String avatarUrl){
  return Column(
    children: [
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: Colors.blue,
            image: DecorationImage(
              image: NetworkImage(avatarUrl),
              fit: BoxFit.cover,
            )
      ),
    ),
          ),
      Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color:Colors.green,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color:Colors.white,width:1)
        ))),  
      ],
      ),
    ],
  );
}
