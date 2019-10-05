import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Proj',
      home: Class1(),
    );
  }
}

class Class1 extends StatefulWidget {
  @override
  _Class1State createState() => _Class1State();
}

class _Class1State extends State<Class1> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Column(
        children: <Widget>[
          Spacer(),
          Center(
            child: Text('Youve clicked $count times'),
          ),
          Spacer(),
          FloatingActionButton(
            child: Text('++'),
            onPressed: () {
              setState(() {
                count += 1;
              });
            },
          ),
          Spacer(),
          FloatingActionButton(
            child: Text('--'),
            onPressed: () {
              setState(() {
                count -= 1;
              });
            },
          ),
          Spacer(),
          FloatingActionButton(
            child: Text('reset'),
            onPressed: () {
              setState(() {
                count = 0;
              });
            },
          ),
          Spacer(),
        ],
      ),
    );
  }
}
