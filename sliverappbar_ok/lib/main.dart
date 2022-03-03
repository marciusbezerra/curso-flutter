import 'package:flutter/material.dart';

void main() => runApp(SliverAppBarDemo());

class SliverAppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sliver App Bar',
        home: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, condition) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.black,
                  leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.refresh),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    )
                  ],
                  expandedHeight: 200,
                  floating: true,
                  pinned: false,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Text('Sliver Sample'),
                    background: Image.network(
                      'http://lorempixel.com/400/200/',
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ];
            },
            body: Center(
              child: Text(
                'SliverAppBar Sample',
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
            ),
          ),
        ));
  }
}
