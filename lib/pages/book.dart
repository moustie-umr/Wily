import 'package:flutter/material.dart';


class BookPage extends StatelessWidget{
  final String title;
  final String image;
  final String description;

  BookPage(this.title, this.image, this.description);

  @override 
  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(image),
              Text(description),
            ],
          )
          ),
    );
  }
   
}