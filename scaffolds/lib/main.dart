import 'package:flutter/material.dart';

void main() => runApp(ScaffoldDemo());

class ScaffoldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold Example',
      home: ScaffoldExample(),
    );
  }
}

class ScaffoldExample extends StatefulWidget {
  @override
  _ScaffoldExampleState createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increment Button'),
      ),
      body: Center(
        child: Text('Você pressionou o botão mais $_count vezes'),
      ),
      backgroundColor: Colors.redAccent,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => _count++);
        },
        tooltip: 'Increment Count!',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
