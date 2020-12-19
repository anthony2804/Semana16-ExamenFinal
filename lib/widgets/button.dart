
import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
 final  String texto;

  const SignButton({this.texto});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 5,
      color: Colors.blue,
      shape: StadiumBorder(),
      onPressed: (){},
      child: Container(
        margin: EdgeInsets.symmetric(vertical:18),
        child: Center(child: Text('Ingresar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
      ),
    );
  }
}

