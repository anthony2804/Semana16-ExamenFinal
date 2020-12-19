import 'package:examenfinal/widgets/input.dart';
import 'package:examenfinal/widgets/logo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Logo(title: 'Register',),
            SizedBox(height: 50),
            Form(),
          ]
        )
    );
  }
}

class Form extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          SizedBox(height: 20),
          Input(obscure:false,text: 'Name'),
          SizedBox(height: 20),
          Input(obscure:false,text: 'User Name'),
          SizedBox(height: 20),
          Input(obscure:true,text: 'Mobile Number'), 
          SizedBox(height: 30),
          Input(obscure:true,text: 'Email'), 
          SizedBox(height: 30),
           Input(obscure:true,text: 'Password'), 
          SizedBox(height: 30),
          //boton
          SizedBox(height: 30),
          LoginRegisterButton(),
          SizedBox(height: 0),
        ]
      ),
    );
  }    
}

class LoginRegisterButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 8),
          GestureDetector(
            onTap: (){
              Navigator.pushReplacementNamed(context, 'second');
            },
            child: 
            Text('Sign up',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)
            ),
        ]
      ),
    );
  }
}