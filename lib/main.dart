import 'package:capser_mobile/providers/players.dart';
import 'package:capser_mobile/screens/player_screen.dart';
import 'package:capser_mobile/screens/players_screen.dart';
import 'package:capser_mobile/widgets/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Players()),
      ],
      child: MaterialApp(
        title: 'CapserMobile',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.red,
          cardColor: Color.fromRGBO(66, 66, 66, 20),
          scaffoldBackgroundColor: Color.fromRGBO(48, 48, 48, 20),
        ),
        home: MyHomePage(),
        routes: {
          PlayersScreen.nameRoute: (ctx) => PlayersScreen(),
          PlayerScreen.nameRoute: (ctx) => PlayerScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Caps League'),
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Let\'s build a shop!'),
      ),
    );
  }
}
