import 'package:flutter/material.dart';
import 'package:flutter_book_design/data.dart';
import 'package:flutter_book_design/rating_bar.dart';

class Detail extends StatelessWidget {
  final Book book;

  Detail(this.book);

  Widget build(BuildContext context) {
    //App Bar
    final appBar = AppBar(
      elevation: .5,
      title: Text('Design Book'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );

    //Detail of book image and pages
    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16),
          child: Hero(
            tag: book.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.yellow.shade900,
              child: Image(
                image: AssetImage(book.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text('${book.pages} pages', color: Colors.black87, size: 13),
      ],
    );

    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(book.title,
            size: 16, isBold: true, padding: EdgeInsets.only(top: 16)),
        text('By ${book.author}',
            color: Colors.black54,
            size: 12,
            padding: EdgeInsets.only(top: 8.0, bottom: 16.0)),
        Row(
          children: <Widget>[
            text(book.price,
                isBold: true, padding: EdgeInsets.only(right: 8.0)),
            RatingBar(
              rating: book.rating,
            ),
          ],
        ),
        SizedBox(
          height: 32.0,
        ),
        Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.blue.shade300,
          elevation: 5.0,
          child: MaterialButton(
            onPressed: () {},
            minWidth: 160.0,
            color: Colors.blue,
            child: text('BUY IT NOW!', color: Colors.white, size: 12),
          ),
        )
      ],
    );

    final topContent = Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: topLeft,
          ),
          Flexible(
            flex: 3,
            child: topRight,
          )
        ],
      ),
    );

    final bottomContent = Container(
      height: 220.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          book.description,
          style: TextStyle(fontSize: 13.0, height: 1.5),
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  //Create text widget
  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
            color: color,
            fontSize: size.toDouble(),
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      );
}
