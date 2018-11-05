import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildMainLayout(),
      ),
    );
  }

  Column _buildMainLayout() {
    return Column(
        children: <Widget>[
          Flexible(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Container(
                    color: Colors.red,
                    padding: EdgeInsets.all(18.0),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(18.0),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Container(
                    color: Colors.green,
                    padding: EdgeInsets.all(18.0),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Container(
                    color: Colors.amber,
                    padding: EdgeInsets.all(18.0),
                  ),
                )
              ],
            ),
          ),
        ],
      );
  }
}
