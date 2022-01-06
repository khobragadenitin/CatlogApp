import 'package:flutter/material.dart';
import 'package:todo_flutter/MyRoutes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_two.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter UserName", labelText: "UserName"),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter Passord", labelText: "Password"),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        style: TextButton.styleFrom(minimumSize: Size(150,50)),
                        child: Text("Login"),
                        onPressed: (){
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
