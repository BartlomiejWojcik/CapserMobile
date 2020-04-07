import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

class Player {
  final int id;
  final String name;
  final double points;
  final double averageRebottles;
  final int gamesPlayed;
  final int gamesWon;
  final int gamesLost;
  final double winLossRatio;
  final int totalPointsMade;
  final int totalPointsLost;
  final int totalSinksMade;
  final int totalSinksLost;
  final double sinksMadeToLostRatio;
  final bool nakedLap;
  final int nakedLapCount;
  final DateTime lastSeen;
  final DateTime lastGame;

  Player({
    @required this.id,
    @required this.name,
    @required this.points,
    @required this.averageRebottles,
    @required this.gamesPlayed,
    @required this.gamesWon,
    @required this.gamesLost,
    @required this.winLossRatio,
    @required this.totalPointsMade,
    @required this.totalPointsLost,
    @required this.totalSinksMade,
    @required this.totalSinksLost,
    @required this.sinksMadeToLostRatio,
    @required this.nakedLap,
    @required this.nakedLapCount,
    @required this.lastSeen,
    @required this.lastGame,
  });

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      name: json['name'],
      points: json['points'],
      averageRebottles: json['averageRebottles'],
      gamesPlayed: json['gamesPlayed'],
      gamesWon: json['gamesWon'],
      gamesLost: json['gamesLost'],
      winLossRatio: json['winLossRatio'],
      totalPointsMade: json['totalPointsMade'],
      totalPointsLost: json['totalPointsLost'],
      totalSinksMade: json['totalSinksMade'],
      totalSinksLost: json['totalSinksLost'],
      sinksMadeToLostRatio: json['sinksMadeToLostRatio'],
      nakedLap: json['nakedLap'],
      nakedLapCount: json['nakedLapCount'],
      lastSeen: json['lastSeen'] != null ? DateTime.parse(json['lastSeen']) : null,
      lastGame: json['lastGame'] != null ? DateTime.parse(json['lastGame']) : null,
    );
  }
}

class Players with ChangeNotifier {
  List<Player> _players = [];

  List<Player> get players {
    return [..._players];
  }

  // TODO: ADD pagination
  Future<void> fetchProducts() async {
    const authority = 'www.globalcapsleague.com';
    const path = '/stats/players';
    const parameters = {
      'pageNumber': '0',
      'pageSize': '100',
    };
    var uri = Uri.http(authority, path, parameters);
    try {
      final response = await http.get(uri);
      final content = json.decode(response.body)['content'] as List<dynamic>;
      final List<Player> loadedPlayers = [];
      content.forEach((player) {
        loadedPlayers.add(Player.fromJson(player));
      });
      _players = loadedPlayers;
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  Player getById(int id) {
    return players.firstWhere((pl) => pl.id == id);
  }
}