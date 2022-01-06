import 'package:flutter/material.dart';
import 'package:todo_flutter/MyRoutes.dart';
import 'package:todo_flutter/pages/home_page.dart';
import 'package:todo_flutter/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
  
}


class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage()
      },
    );
  }
}