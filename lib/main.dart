import 'package:flutter/material.dart';
import 'package:flutter_book_design/data.dart';
import 'package:flutter_book_design/detail.dart';
import 'package:flutter_book_design/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
        platform: TargetPlatform.android
      ),
      home: Home(),
      onGenerateRoute: (settings) =>getnerateRoute(settings),
    );
  }

  getnerateRoute(RouteSettings settings){
    final path = settings.name.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book)
    );
  }
}
