import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// room btn 
Widget roomBtn(){
  return Container(
    width: 105,
    height: 0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.lightBlue[100],width:2)
    ),
    child:
    Row(mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(width: 10,),
      Icon(
        MdiIcons.videoPlus,size: 30,color: Colors.deepPurpleAccent,
      ),
      SizedBox(width: 10,),
      Text("Create \nroom",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500)),
    ],
    )
  );
}

