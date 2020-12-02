import 'package:flutter/material.dart';

Widget actionButton(IconData icon, String actionTitle, Color iconColor){
  return Expanded(
    child: FlatButton.icon(onPressed: (){}, icon: Icon(icon,color: iconColor,), label: Text(actionTitle,
    style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
    )),
  );
}