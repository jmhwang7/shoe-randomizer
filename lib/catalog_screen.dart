import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoe Catalog'),
        actions: <Widget>[
          FlatButton(
            child: Text('Add'),
            textColor: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Container(),
    );
  }
}
