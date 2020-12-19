import 'package:flutter/material.dart';

class Input extends StatelessWidget {

  final bool obscure;
  final String text;
  final IconData icon;


  Input({
    this.obscure,
    this.text,
    this.icon
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right:20,top: 5,bottom: 5, left: 5),
      decoration: BoxDecoration(
        color: Colors.white,       
      ),
      child: TextField(
      //  obscureText:this.obscure,
        decoration: InputDecoration(
          hintText:  this.text,
         // focusedBorder: InputBorder.none,
          //border: InputBorder.none
        ),
      ),
     );
  }    
}

