import 'package:flutter/material.dart';

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackbar = const SnackBar(content: Text('Mostrando SnackBar'));

void main() {
  runApp(MaterialApp(
    title: 'Componente AppBar',
    home: AppBarWidget(),
  ));
}

void openPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Próxima Página'),
        ),
        body: Center(
            child: Text(
          'Esse é a Próxima Página',
          style: TextStyle(fontSize: 30),
        )),
      );
    }),
  );
}

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('AppBar Demo'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: 'Mostrar SnakBar',
              onPressed: () {
                scaffoldKey.currentState.showSnackBar(snackbar);
              }),
          IconButton(
              icon: Icon(Icons.navigate_next),
              tooltip: 'Próxima Pagina',
              onPressed: () {
                openPage(context);
              }),
        ],
      ),
      body: Center(
          child: Text(
        'Esse á a Primeira Página',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
