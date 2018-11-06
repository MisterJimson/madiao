import 'package:flutter/material.dart';
import 'package:madiao/game/game_objects.dart';
import 'package:madiao/ui/cards.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            children: <Widget>[Flexible(child: _buildP2HandZone())],
          ),
        ),
        Flexible(
          child: Row(
            children: <Widget>[Flexible(child: _buildP2BoardZone())],
          ),
        ),
        Flexible(
          child: Row(
            children: <Widget>[Flexible(child: _buildP1BoardZone())],
          ),
        ),
        Flexible(
          child: Row(
            children: <Widget>[Flexible(child: _buildP1HandZone())],
          ),
        ),
      ],
    );
  }

  Container _buildZone(
      {Color color,
      CrossAxisAlignment crossAxisAlignment,
      List<Widget> children}) {
    return Container(
      padding: EdgeInsets.all(15.0),
      constraints: BoxConstraints.expand(),
      color: color,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: crossAxisAlignment,
          children: children),
    );
  }

  List<Widget> getCards() {
    return [
      CardW(
        card: PlayingCard(suit: Suit.hearts(), value: CardValue.eight()),
      ),
      CardW(
        card: PlayingCard(suit: Suit.diamonds(), value: CardValue.four()),
      ),
      CardW(
        card: PlayingCard(suit: Suit.spades(), value: CardValue.jack()),
      ),
      CardW(
        card: PlayingCard(suit: Suit.hearts(), value: CardValue.nine()),
      ),
      CardW(
        card: PlayingCard(suit: Suit.clubs(), value: CardValue.six()),
      ),
    ];
  }

  Container _buildP1HandZone() {
    return _buildZone(
        color: Colors.red,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: getCards());
  }

  Container _buildP2HandZone() {
    return _buildZone(
        color: Colors.blue,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: getCards());
  }

  Container _buildP1BoardZone() {
    return _buildZone(
        color: Colors.green,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: getCards());
  }

  Container _buildP2BoardZone() {
    return _buildZone(
        color: Colors.amber,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: getCards());
  }
}
