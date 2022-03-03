import 'package:flutter/material.dart';

void main() => runApp(BottomNavApp());

class BottomNavApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Bottom Navigation Bar', home: MyHome());
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedTabIndex = 0;

  static const TextStyle _style =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _routes = <Widget>[
    Text(
      'Rota Home',
      style: _style,
    ),
    Text(
      'Rota de Negócios',
      style: _style,
    ),
    Text(
      'Rota de Cursos',
      style: _style,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Bttom Navigation Bar'),
      ),
      body: Center(
        child: _routes.elementAt(_selectedTabIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Negócios'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Cursos'),
          ),
        ],
        currentIndex: _selectedTabIndex,
        onTap: (int i) {
          setState(() {
            _selectedTabIndex = i;
          });
        },
      ),
    );
  }
}
