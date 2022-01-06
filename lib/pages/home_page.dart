import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/MyDrawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      appBar: AppBar(
        title: Text("Nitin Khobragade"),
      ),

        body: Center(
          child: Container(
            child : Text("Welcome to 30 Days of Flutter")
          ),
        ),

        drawer: MyDrawer(),

      );
  }
}