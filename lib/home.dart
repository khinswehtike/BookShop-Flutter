import 'package:flutter/material.dart';

import 'data.dart';

class Home extends StatelessWidget{

  Widget build(BuildContext context) {

    final appBar = AppBar(
      elevation: 0.5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: (){},
      ),
      title: Text('Design Books'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        ),
      ],
    );

    //create book tile
    createTile(Book book) => Hero(
      tag: book.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.yellow.shade900,
        child: InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'detail/${book.title}');
          },
          child: Image(
            image: AssetImage(book.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

    //create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
              crossAxisCount: 3,
            childAspectRatio: 2/3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: books.map((book) => createTile(book)).toList(),//1.books -> data.dart(books) | 2.book is new variable
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.yellow[300],
      appBar: appBar,
      body: grid,
    );
  }
}