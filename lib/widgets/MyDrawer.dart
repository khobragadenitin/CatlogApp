import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  const MyDrawer({Key key}) : super(key: key);

  final url = "https://pbs.twimg.com/profile_images/461835220593815552/X-Fv9sD-_400x400.jpeg";

  @override
  Widget build(BuildContext context) {
    return Drawer(child: Container(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Nitin Khobragade"),
              accountEmail: Text("khobragdenitin7@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(url),
              ),

          )),
          ListTile(
            title: Text("Home", textScaleFactor: 1.2,),
            leading: Icon(CupertinoIcons.home),
          ),
          ListTile(
            title: Text("Profile", textScaleFactor: 1.2,),
            leading: Icon(CupertinoIcons.profile_circled),
          ),
          ListTile(
            title: Text("Email", textScaleFactor: 1.2,),
            leading: Icon(CupertinoIcons.mail),
          )
        ],
      ),
    ));
  }
}
