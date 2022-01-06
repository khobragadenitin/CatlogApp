import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_flutter/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool isBtnClicked = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {

    if(_formKey.currentState.validate()){
      setState(() {
      isBtnClicked = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
          isBtnClicked = false;
        });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  "Welcome $name",
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
                          onChanged: (value) {
                            setState(() {
                              name = value;
                            });
                          },
                          validator: (value){
                            if(value.isEmpty){
                              return "Username cannot be empty";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Enter UserName",
                              labelText: "UserName"),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          validator: (value){
                            if(value.isEmpty){
                              return "Password cannot be empty";
                            }
                            else if(value.length<6){
                              return "Password Cannot be less than 6 Char";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Enter Passord", labelText: "Password"),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),

                        Material(
                          borderRadius:
                              BorderRadius.circular(isBtnClicked ? 50 : 8),
                          color: Colors.deepPurple,
                          child: InkWell(
                            onTap: ()  => moveToHome(context),
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: isBtnClicked ? 50 : 150,
                              height: 50,
                              alignment: Alignment.center,
                              child: isBtnClicked
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: TextStyle(color: Colors.white),
                                    ),
                            ),
                          ),
                        )

                        // ElevatedButton(
                        //   style: TextButton.styleFrom(minimumSize: Size(150,50)),
                        //   child: Text("Login"),
                        //   onPressed: (){
                        //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                        //   },
                        // )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
