import 'package:flutter/material.dart';

Widget StoryTile(String avatarUrl, String storyUrl, String username){
  return Container(
    height: 155.0,
    width: 120.0,
    margin: EdgeInsets.only(right:5.0,top: 5.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12.0),
      image: DecorationImage(
        image: NetworkImage(storyUrl),
        fit: BoxFit.cover,
      )
    ),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl)),
            Expanded(
              child: Container(),
            ),
            Text(username, style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0))
        ],
      ),
    ),
  );
}