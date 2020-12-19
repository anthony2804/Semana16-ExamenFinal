import 'package:examenfinal/widgets/logo.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Logo(title: 'Hi Ravi!',),
          Text('Start learning something', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          Text('new today', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 50),  
          Fila(title: "Classrom"),
          SizedBox(height: 20), 
          Fila(title: "Recommended Couses"),
          SizedBox(height: 60),
          Footer(),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(Icons.reorder,size:30),
            Spacer(),
            Icon(Icons.notification_important_outlined,size:30),
          ],
        ),
      ),
    );
  }
}


class Fila extends StatelessWidget {

final String title;

  const Fila({this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [  
              Align(
                alignment: Alignment.centerLeft,
                 widthFactor: 6,
                child: Text(this.title, style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.pink),), 
                 ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Classroom(classroom: '7'),
                  Classroom(classroom: '7.5'),
                  Classroom(classroom: '8'),
                ]
              )
            ],
          ),
        )
       
      ]
    );
  }
}

class Classroom extends StatelessWidget {

  final String classroom;

  const Classroom({this.classroom});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Image(image: AssetImage('assets/image2.jpg'),height: 300,width: 300,),
    );
  }
}



class Footer extends StatelessWidget {


 Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
       children:[
        Align(
           alignment: Alignment.centerLeft,
           widthFactor: 11,
           child: Text('Feed', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black),), 
        ),
           Container(
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 200,
          decoration: BoxDecoration(
            color: Colors.pink[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [  
              Align(
                alignment: Alignment.centerRight,
                child: Texto(text:'Student Cour')
              ),
               Texto(text:'General Courses'),
              Align(
                alignment: Alignment.centerLeft,
                child: Texto(text:'udent Courses')
              )
            ],
          ),
        ),  
        ]
    );
  }
}


class Texto extends StatelessWidget {

  final String text;

  const Texto({this.text});

  @override
  Widget build(BuildContext context) {
    return Text( 
      text, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      );
  }
}
