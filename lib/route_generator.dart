import 'package:sanchez/main.dart';
import 'package:sanchez/second_page.dart';
import 'package:flutter/material.dart';
 
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
 
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => PageOne(),
        );
      case "/secondPage":
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              texto: args,
            ),
          );
        } else
          return _errorPage();
        break;
      default:
        return _errorPage();
    }// fin de switch
  }// fin de lista route dinamic
 
  static Route<dynamic> _errorPage() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("ERROR"),
        ),
        body: Center(
          child: Text("Error page"),
        ),//fin body
      ),//fin scaffold
    );//fin return
  }//fin static route
}//fin class