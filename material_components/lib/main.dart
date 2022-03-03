import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'FLoating Action Button',
    home: FloatingActionSample(),
  ));
}

class FloatingActionSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu), tooltip: 'Menu', onPressed: null),
        title: Text('App Title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: Center(
        child: Text('Floating Action Button'),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: 'add', child: Icon(Icons.add), onPressed: null),
    );
  }
}
