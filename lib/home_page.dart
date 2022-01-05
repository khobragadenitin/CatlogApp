import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double days = 40.5;
    String name = "Nitin ";

    var day = "Tuesday";

    return Scaffold(
      appBar: AppBar(
        title: Text("Nitin Khobragade"),
      ),
        body: Center(
          child: Container(
            child : Text("Welcome to $days Days of $name")
          ),
        ),
        drawer: Drawer(
          child: Text("Nitin"),
        ),
      );
  }
}