import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Dog List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.bubble_chart_sharp),
              title: Text('poodle'),
            ),
            ListTile(
              leading: Icon(Icons.bubble_chart_sharp),
              title: Text('siberian husky'),
            ),
            ListTile(
              leading: Icon(Icons.bubble_chart_sharp),
              title: Text('pug'),
            ),

          ],
        ),
    floatingActionButton: FloatingActionButton(
    onPressed: _increment,
    // onPressed: () {  },
    child: Icon(Icons.add),
      ),
    ));
  }
}

void _increment() {
}