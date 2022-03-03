import 'package:flutter/material.dart';

void main() => runApp(DrawerApp());

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo de Drawer'),
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Marcius Bezerra',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Notificações'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Perfil'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configurações'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
