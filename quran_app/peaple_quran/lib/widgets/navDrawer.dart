import 'package:flutter/material.dart';
import 'package:peaple_quran/Database/account/login.dart';
import 'package:peaple_quran/Database/account/loginscreen.dart';
import 'package:peaple_quran/Database/provider/auth.dart';
import 'package:peaple_quran/main.dart';
import 'package:provider/provider.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Consumer<auth>(builder: (context, auth, child) {
        if (auth.Authenticated) {
        return   ListView(
            children: [
              ListTile(
                title: Text("data tt"),
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tttttdt()));
                }),
              ),
  ListTile(
                title: Text("data tt"),
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tttttdt()));
                }),
              )
            ],

          );
        } else {
         return  ListView(
            children: [
              ListTile(
                title: Text("data ttt"),
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginscrean()));
                }),
              ),
            ListTile(
                title: Text("data"),
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => tttttdt()));
                }),
              )
            ],
          );
        }
        ;
      }),
    );
  }
}
