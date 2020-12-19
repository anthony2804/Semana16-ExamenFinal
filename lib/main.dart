import 'package:examenfinal/pages/principal.dart';
import 'package:examenfinal/pages/register.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
     routes: {
       'home': (BuildContext context) => RegisterPage(),
       'second': (BuildContext context) => PrincipalPage(),
       },
      
    );
  }
}



