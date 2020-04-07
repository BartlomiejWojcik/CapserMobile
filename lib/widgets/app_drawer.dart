import 'package:capser_mobile/screens/players_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Menu'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Sign In'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.supervisor_account),
            title: Text('Players'),
            onTap: () {
              Navigator.of(context).popAndPushNamed(PlayersScreen.nameRoute);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.games),
            title: Text('Games'),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text('10 Commandments'),
            onTap: () {},
          ),
          Divider(),
        ],
      ),
    );
  }
}