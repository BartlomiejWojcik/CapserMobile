import 'package:capser_mobile/screens/player_screen.dart';
import 'package:flutter/material.dart';

class PlayerListItem extends StatelessWidget {
  final int position;
  final int id;
  final String name;
  final double points;

  PlayerListItem(
    this.position,
    this.id,
    this.name,
    this.points,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed(PlayerScreen.nameRoute, arguments: id);
        },
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            'assets/images/avatar.jfif',
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          ),
        trailing: Text(
          'Points: ${points.toStringAsFixed(0)}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
