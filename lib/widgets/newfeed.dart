import 'package:app/widgets/actionbtn.dart';
import 'package:flutter/material.dart';

Widget feedbox(String username, String avatarUrl, String date, String contentText, String contentImg){
  return Container(
    margin: EdgeInsets.only(bottom:20.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: Colors.white,
    ),
    child: Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: CircleAvatar(
                  backgroundImage:NetworkImage(avatarUrl),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,style: TextStyle(color: Colors.black,
                    fontSize: 18.0,fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height:5.0),
                  Text(
                    date,style: TextStyle(color: Colors.black,
                    fontSize: 16.0,fontWeight: FontWeight.w400),
                  ),
                ],
              )),
            ],
          ),
          SizedBox(height:10.0),
          if (contentText != "")
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text(
                contentText,
                style: TextStyle(color: Colors.black,fontSize: 16.0),
              ),
            ),
          SizedBox(height:10.0),
          if (contentImg !="") Image.network(contentImg),
          Divider(
            color: Colors.grey[100],
            thickness: 1.5,
          ),
          Row(
            children: [
            actionButton(Icons.thumb_up, "Like", Colors.blue),
            actionButton(Icons.comment, "Reply", Colors.black),
            actionButton(Icons.share, "Share", Colors.black),
          ],
          ),
          Padding(
                padding: const EdgeInsets.only(top:8.0,bottom:8.0,left:0),
                child: Container(
                  width: double.infinity,
                  height: 10,
                  color: Color(0xffc0c0c0),
                ),
              ),
        ],
      ),
    ),
  );
}