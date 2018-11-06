import 'package:flutter/material.dart';

class PlayingCard {
  final Suit suit;
  final CardValue value;

  PlayingCard({@required this.suit, @required this.value});
}

class Suit {
  String name;

  Suit.clubs() {
    name = "Clubs";
  }

  Suit.diamonds() {
    name = "Diamonds";
  }

  Suit.hearts() {
    name = "Hearts";
  }

  Suit.spades() {
    name = "Spades";
  }

  @override
  bool operator ==(dynamic other) {
    return (other.name == name);
  }

  @override
  int get hashCode => name.hashCode;
}

class CardValue {
  int value;

  CardValue.ace() {
    value = 1;
  }

  CardValue.two() {
    value = 2;
  }

  CardValue.three() {
    value = 3;
  }

  CardValue.four() {
    value = 4;
  }

  CardValue.five() {
    value = 5;
  }

  CardValue.six() {
    value = 6;
  }

  CardValue.seven() {
    value = 7;
  }

  CardValue.eight() {
    value = 8;
  }

  CardValue.nine() {
    value = 9;
  }

  CardValue.ten() {
    value = 10;
  }

  CardValue.jack() {
    value = 11;
  }

  CardValue.queen() {
    value = 12;
  }

  CardValue.king() {
    value = 13;
  }

  @override
  bool operator ==(dynamic other) {
    return (other.value == value);
  }

  @override
  int get hashCode => value.hashCode;
}
