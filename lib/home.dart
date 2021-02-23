import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/setState');
              },
              child: Text('SetState'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/value-notifier');
              },
              child: Text('Value Notifier'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/change-notifier');
              },
              child: Text('Change Notifier'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/streams');
              },
              child: Text('Streams'),
            ),
          ],
        ),
      ),
    );
  }
}
