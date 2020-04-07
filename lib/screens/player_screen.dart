import 'package:capser_mobile/providers/players.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayerScreen extends StatelessWidget {
  static const nameRoute = '/player';

  @override
  Widget build(BuildContext context) {
    //final playerId = ModalRoute.of(context).settings.arguments as int;
    //final player = Provider.of<Players>(context).getById(playerId);
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Name"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.jfif'),
              radius: 100.0,
            ),
            SizedBox(height: 24.0),
            Text(
              'Mike',
              style: TextStyle(color: Colors.white, fontSize: 36.0),
            ),
            SizedBox(height: 24.0),
            Container(
              width: double.infinity,
              height: 100,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Points',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                            ),
                          ),
                          Text(
                            '738',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36.0
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Won',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                            ),
                          ),
                          Text(
                            '60',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 36.0
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Loss',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                            ),
                          ),
                          Text(
                            '28',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 36.0
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'Ratio',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0
                            ),
                          ),
                          Text(
                            '2.14',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36.0
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.0,),
            Container(
              width: double.infinity,
              height: 350.0,
              child: Card(
                child: Column(
                  children: <Widget>[
                    
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
