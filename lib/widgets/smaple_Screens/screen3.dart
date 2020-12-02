import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Home2(),
    )
  );
}


class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Tab3"),
    );
  }
}