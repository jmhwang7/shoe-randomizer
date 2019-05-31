import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget _getContent( // #1
      BuildContext context) {
    return Column(children: [
      RaisedButton( // #2
        child: Text('Catalog'),
        color: Theme.of(context).accentColor,
        elevation: 4.0,
        splashColor: Colors.blueGrey,
        onPressed: () {})
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final appName = 'Shoe Randomizer';
    return Scaffold( // #3
      appBar: AppBar(
        title: Text(appName),
      ),
      body: Center(child: _getContent(context)),
    );
  }
}