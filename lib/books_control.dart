import 'package:flutter/material.dart';


class BooksControl extends StatelessWidget{
  final Function addBook;

  BooksControl(this.addBook);

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
                color: Theme.of(context).accentColor,
                onPressed: () {
                  addBook({'title':'Dune', 'image':'assets/images/adventure.jpg', 'description':'A sci-fi novel'});
                },
                child: Text('+ Add Book'), 
              );
  }
}