import 'package:flutter/material.dart';

import './pages/book.dart';

class Books extends StatelessWidget{
  final List <Map<String, String>> books;

  Books(this.books, this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
              children: <Widget>[
                Card(
                  child: Column(
                    children: <Widget>[
                      Text(books[index]['title']),
                      Image.asset(books[index]['image']),
                      Text(books[index]['description']), 
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            child: Text('Info'),
                            onPressed: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => BookPage(books[index]['title'], books[index]['image'], books[index]['description'])
                              ));
                            },
                            )
                        ],
                      )
                  ],
               ),
             ),],
              );
            
  }
}
 