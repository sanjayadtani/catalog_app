import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Sanjay Adtani"),
              accountEmail: Text("sanjay.adtani01@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://pbs.twimg.com/profile_images/1313084317329846274/l3sPxGbD_400x400.jpg"),
              ),
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
          ),
          ListTile(
            onTap: () {
              Fluttertoast.showToast(
                msg: "Hello Sanjay Home",
                backgroundColor: Colors.grey,
                fontSize: 25,
                gravity: ToastGravity.BOTTOM,
                textColor: Colors.pink,
              );
            },
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black87,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.5,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black87,
            ),
            title: Text(
              "About Us",
              textScaleFactor: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
