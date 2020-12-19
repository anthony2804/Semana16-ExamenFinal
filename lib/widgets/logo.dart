import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final  String title;

  const Logo({this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(this.title, style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        ]
      ),
    );
  }
}