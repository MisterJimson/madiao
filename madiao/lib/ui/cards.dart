import 'package:flutter/material.dart';
import 'package:madiao/game/game_objects.dart';

class CardW extends StatelessWidget {
  final PlayingCard card;

  CardW({@required this.card});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(_getIconForCard()),
          Text(card.value.value.toString())
        ],
      ),
    );
  }

  IconData _getIconForCard() {
    if (card.suit == Suit.hearts()) {
      return Icons.favorite;
    } else if (card.suit == Suit.clubs()) {
      return Icons.bubble_chart;
    } else if (card.suit == Suit.diamonds()) {
      return Icons.eject;
    } else if (card.suit == Suit.spades()) {
      return Icons.edit_location;
    }

    return Icons.error_outline;
  }
}
