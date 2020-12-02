import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Home5(),
    )
  );
}


class Home5 extends StatefulWidget {
  @override
  _Home5State createState() => _Home5State();
}

class _Home5State extends State<Home5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Tab6"),
    );
  }
}