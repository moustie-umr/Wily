import 'package:flutter/material.dart';

import './books.dart';
import './books_control.dart';


class BooksManager extends StatefulWidget{
  final Map<String, String> defaultBook;

  BooksManager([this.defaultBook]);

  @override 
  State<StatefulWidget> createState() {

    return _BooksManagerState();
  }
} 

class _BooksManagerState extends State<BooksManager>{
  List <Map<String, String>> _books = [];

  @override
  void initState() {
    if (widget.defaultBook != null){
      _books.add(widget.defaultBook);  
    }
    super.initState();
    
  }

  void _addBook(Map<String, String> book){
    setState(() {
      _books.add(book);
      });
  }

  @override 
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
              margin: EdgeInsets.all(10.0),
              child: BooksControl(_addBook),
            ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Books(_books, 1),
        ),
      ],
      ); 
  } 
}