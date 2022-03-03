import 'package:flutter/material.dart';

class MyBar extends StatelessWidget {
  final Widget title;

  MyBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        margin: EdgeInsets.symmetric(vertical: 28.0),
        decoration: BoxDecoration(color: Colors.blue),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              tooltip: 'Menu',
              onPressed: null,
            ),
            Expanded(
              child: this.title ?? Text('Sem Título'),
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              tooltip: 'Pesquisa',
              onPressed: null,
            ),
          ],
        ));
  }
}

class MyCustomScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: <Widget>[
            MyBar(
              title: Text(
                'Título do App',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Text('MARCIUS BEZERRA',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Meu App',
    home: MyCustomScaffold(),
    debugShowCheckedModeBanner: false,
  ));
}
