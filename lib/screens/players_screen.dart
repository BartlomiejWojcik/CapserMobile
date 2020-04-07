import 'package:capser_mobile/providers/players.dart';
import 'package:capser_mobile/widgets/app_drawer.dart';
import 'package:capser_mobile/widgets/player_list_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayersScreen extends StatefulWidget {
  static const nameRoute = '/players';

  @override
  _PlayersScreenState createState() => _PlayersScreenState();
}

class _PlayersScreenState extends State<PlayersScreen> {
  var _isInit = true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      Provider.of<Players>(context).fetchProducts();
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final players = Provider.of<Players>(context).players;
    return Scaffold(
      appBar: AppBar(
        title: Text('Players'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
          itemCount: players.length,
          itemBuilder: (ctx, i) {
            return PlayerListItem(
              i,
              players[i].id,
              players[i].name,
              players[i].points,
            );
          }),
    );
  }
}
