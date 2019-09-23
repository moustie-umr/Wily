import 'package:flutter/material.dart';

import '../books_manager.dart';

class HomePage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
        appBar: AppBar(
          title: Text('Dusty Bookstore'),
          ),
        body: BooksManager({'title':'Dune', 'image':'assets/images/adventure.jpg', 'description':'A sci-fi novel'}),
    );
  }
   
}