import 'package:flutter/material.dart';

void main() => runApp(NamedRouteApp());

class NamedRouteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstRoute(),
        '/second': (context) => SecondRoute()
      },
    );
  }

  Widget gotoRoute(context) {
    return SecondRoute();
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Rota'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Ir para a Segunda Rota'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            }),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Voltar'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
